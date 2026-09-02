[CmdletBinding()]
param(
    [string]$ProjectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'
$failures = [System.Collections.Generic.List[string]]::new()

function Read-RequiredText {
    param([string]$RelativePath)
    $path = Join-Path $ProjectRoot $RelativePath
    if (-not (Test-Path -LiteralPath $path)) {
        $failures.Add("Missing required path: $RelativePath")
        return ''
    }
    return Get-Content -Raw -LiteralPath $path
}

function Require-Match {
    param(
        [string]$Content,
        [string]$Pattern,
        [string]$Failure
    )
    if ($Content -notmatch $Pattern) {
        $failures.Add($Failure)
    }
}

function Reject-Match {
    param(
        [string]$Content,
        [string]$Pattern,
        [string]$Failure
    )
    if ($Content -match $Pattern) {
        $failures.Add($Failure)
    }
}

function Get-MarkdownSection {
    param(
        [string]$Content,
        [string]$Heading
    )

    $escaped = [regex]::Escape($Heading)
    $match = [regex]::Match(
        $Content,
        "(?ms)^##\s+$escaped\s*\r?\n(?<body>.*?)(?=\r?\n##\s+|\z)"
    )
    if ($match.Success) {
        return $match.Groups['body'].Value
    }
    return ''
}

function Test-BehaviorSpec {
    param(
        [string]$RelativePath,
        [string[]]$PromptAnchors,
        [string[]]$ExpectedAnchors,
        [string[]]$BadAnchors,
        [string[]]$PassAnchors
    )

    $content = Read-RequiredText $RelativePath
    if (-not $content) {
        return
    }

    $prompt = Get-MarkdownSection $content 'Prompt'
    $expected = Get-MarkdownSection $content 'Expected Good Behavior'
    $bad = Get-MarkdownSection $content 'Bad Behavior To Reject'
    $pass = Get-MarkdownSection $content 'Pass Criteria'

    foreach ($section in @{
        Prompt = $prompt
        'Expected Good Behavior' = $expected
        'Bad Behavior To Reject' = $bad
        'Pass Criteria' = $pass
    }.GetEnumerator()) {
        if ([string]::IsNullOrWhiteSpace($section.Value)) {
            $failures.Add("Behavior spec $RelativePath is missing section: $($section.Key)")
        }
    }

    if ($prompt -notmatch '(?s)```.*```') {
        $failures.Add("Behavior spec $RelativePath must include a fenced prompt")
    }

    $positiveCount = [regex]::Matches($expected, '(?m)^\s*-\s+').Count
    $negativeCount = [regex]::Matches($bad, '(?m)^\s*-\s+').Count
    if ($positiveCount -lt 5) {
        $failures.Add("Behavior spec $RelativePath needs at least five positive decisions")
    }
    if ($negativeCount -lt 5) {
        $failures.Add("Behavior spec $RelativePath needs at least five rejected decisions")
    }

    foreach ($anchor in $PromptAnchors) {
        if ($prompt -notmatch $anchor) {
            $failures.Add("Behavior spec $RelativePath prompt is missing scenario anchor: $anchor")
        }
    }
    foreach ($anchor in $ExpectedAnchors) {
        if ($expected -notmatch $anchor) {
            $failures.Add("Behavior spec $RelativePath expected behavior is missing anchor: $anchor")
        }
    }
    foreach ($anchor in $BadAnchors) {
        if ($bad -notmatch $anchor) {
            $failures.Add("Behavior spec $RelativePath bad behavior is missing anchor: $anchor")
        }
    }
    foreach ($anchor in $PassAnchors) {
        if ($pass -notmatch $anchor) {
            $failures.Add("Behavior spec $RelativePath pass criteria is missing anchor: $anchor")
        }
    }
}

$distance = Read-RequiredText 'skills/sheep-story/references/narrative-distance-and-pov.md'
$rhythm = Read-RequiredText 'skills/sheep-story/references/prose-rhythm.md'
$style = Read-RequiredText 'skills/sheep-story/references/style-preservation.md'
$antiAi = Read-RequiredText 'skills/sheep-story/references/anti-ai-flavour.md'
$outlineGate = Read-RequiredText 'skills/sheep-story/references/outline-gate.md'
$sourceMap = Read-RequiredText 'skills/sheep-story/references/source-map.md'
$rootReadme = Read-RequiredText 'README.md'
$skillReadme = Read-RequiredText 'skills/sheep-story/README.md'

$distanceIntent = Get-MarkdownSection $distance 'Intent First'
$distancePov = Get-MarkdownSection $distance 'POV Ownership'
$distanceFilters = Get-MarkdownSection $distance 'Filter Verbs Are Not Banned'
$distanceMovement = Get-MarkdownSection $distance 'Distance Movement'
$distanceAi = Get-MarkdownSection $distance 'Narrative Distance and AI Flavour'
$distanceRevision = Get-MarkdownSection $distance 'Revision Protocol'
$distanceReview = Get-MarkdownSection $distance 'Review Failure Modes'

$rhythmEffect = Get-MarkdownSection $rhythm 'Effect First'
$rhythmScale = Get-MarkdownSection $rhythm 'Rhythm Is Multi-Scale'
$rhythmVariance = Get-MarkdownSection $rhythm 'Rhythm Is Not Sentence-Length Variance'
$rhythmPacing = Get-MarkdownSection $rhythm 'Syntax as Pacing'
$rhythmReadAloud = Get-MarkdownSection $rhythm 'Read-Aloud Test Without Pretending to Hear'
$rhythmIntentional = Get-MarkdownSection $rhythm 'Intentional Monotone and Repetition'
$rhythmAi = Get-MarkdownSection $rhythm 'Prose Rhythm and AI Flavour'
$rhythmRevision = Get-MarkdownSection $rhythm 'Revision Protocol'
$rhythmReview = Get-MarkdownSection $rhythm 'Review Failure Modes'

$styleEscalation = Get-MarkdownSection $style 'Specialist Escalation'
$antiCraft = Get-MarkdownSection $antiAi 'Craft-Level Escalation'
$outlineCraft = Get-MarkdownSection $outlineGate 'Conditional Prose-Craft Planning'

# Narrative distance / POV contract. Keep semantic assertions inside the section that owns them.
Require-Match $distance '(?is)grammatical person\s*.*!=\s*POV ownership\s*.*!=\s*narrative distance' 'Narrative-distance guidance must separate grammatical person, POV ownership, and distance.'
Require-Match $distanceIntent '(?is)maximum intimacy.*deep POV.*Judge whether the chosen distance serves the moment|deep POV.*Judge whether the chosen distance serves the moment' 'Narrative-distance intent must reject maximum closeness as a universal quality target.'
Require-Match $distancePov '(?i)Whose perceptual and interpretive access governs this passage' 'Narrative-distance guidance must define POV ownership as an access contract.'
Require-Match $distancePov '(?is)### Observable Is Not Omniscient.*may not silently assert another person.*private thought' 'POV ownership must distinguish observable evidence from another character private interiority.'
Require-Match $distanceFilters '(?is)do \*\*not\*\* delete them mechanically.*attention shift.*uncertainty.*delayed noticing' 'Filter-verb guidance must preserve contextual filters and reject mechanical deletion.'
Require-Match $distanceFilters '(?is)Reduce them when:.*close immediacy.*adds no information.*mediation' 'Filter-verb guidance must still allow reducing unnecessary mediation when closeness calls for it.'
Require-Match $distanceMovement '(?is)### Distance Drift.*unmotivated change in closeness' 'Distance-movement guidance must define unmotivated drift.'
Require-Match $distanceMovement '(?is)### Head-Hop vs Intentional Handoff.*chapter boundary.*section break.*scene transition' 'Distance-movement guidance must distinguish head-hop from intentional handoff and allow clear transitions.'
Require-Match $distanceAi '(?i)Generic Hovering Narrator' 'Narrative-distance AI-flavour guidance must diagnose generic hovering narration.'
Require-Match $distanceAi '(?is)### Fake Deep POV.*fragments.*character-specific diction.*impossible knowledge' 'Narrative-distance AI-flavour guidance must reject fake closeness built from surface markers.'
Require-Match $distanceRevision '(?is)Preserve deliberate distance.*do not make every sentence closer.*purposeful pullback' 'Narrative-distance revision must preserve deliberate distance and pullbacks.'
Require-Match $distanceRevision '(?is)Recheck meaning and continuity.*must not invent canon.*characters truly know' 'Narrative-distance revision must preserve canon and epistemic state.'
Require-Match $distanceReview '(?i)Person-Distance Collapse' 'Narrative-distance review must reject conflating grammatical person with distance.'
Require-Match $distanceReview '(?is)Omniscience-by-Repair.*limited-POV.*unlimited access' 'Narrative-distance review must reject silently solving limited-POV problems with omniscience.'
Reject-Match $distance '(?i)(always|must)\s+(remove|delete)\s+(all\s+)?filter verbs' 'Narrative-distance guidance must not universally delete filter verbs.'
Reject-Match $distance '(?i)(first person|third person)\s*(=|means)\s*(deep|distant)' 'Narrative-distance guidance must not equate grammatical person with distance.'

# Prose-rhythm contract.
Require-Match $rhythmEffect '(?is)Before changing rhythm.*what the passage is meant to do.*Do not vary sentence lengths.*variance' 'Prose-rhythm guidance must diagnose cadence from intended effect rather than a variance target.'
Require-Match $rhythmScale '(?is)### Phrase.*### Sentence.*### Paragraph.*### Passage' 'Prose-rhythm guidance must cover phrase, sentence, paragraph, and passage scales.'
Require-Match $rhythmVariance '(?is)more variance = better prose.*automatic rules.*What effect does it create.*Is that effect intended' 'Prose-rhythm guidance must explicitly reject sentence variance as the definition of quality.'
Require-Match $rhythmPacing '(?is)prose rhythm\s*=\s*how language moves on the page.*macro pacing\s*=\s*how events' 'Prose-rhythm guidance must distinguish language cadence from macro story pacing.'
Require-Match $rhythmReadAloud '(?is)text-only model cannot literally hear.*candidates.*reader''s ear' 'Prose-rhythm guidance must not claim acoustic certainty from text alone.'
Require-Match $rhythmIntentional '(?is)shock.*bureaucracy.*ritual.*If I remove this pattern.*intended effect or voice' 'Prose-rhythm guidance must preserve intentional monotone and repetition when they carry effect or voice.'
Require-Match $rhythmAi '(?is)### Metronome / Drone.*### Fake Variety.*### Paragraph Metronome.*### Fragment Confetti.*### Synonym Roulette' 'Prose-rhythm AI-flavour guidance must cover both accidental sameness and fake variation.'
Require-Match $rhythmRevision '(?is)Do not optimize a metric.*no target variance.*Preserve semantics.*does not authorize new facts' 'Prose-rhythm revision must reject metric optimization and preserve semantic content.'
Require-Match $rhythmReview '(?is)Repetition Erasure.*Fragment Confetti.*Metric Worship.*Macro-Pacing Collapse.*Fake Acoustic Certainty' 'Prose-rhythm review must protect repetition and distinguish metrics, pacing, and acoustic certainty.'
Reject-Match $rhythm '(?i)(always|must)\s+(alternate|vary)\s+(short|sentence)' 'Prose-rhythm guidance must not mandate mechanical sentence alternation.'

# Routing must be conditional, not a mandatory context tax on every revision or outline.
Require-Match $styleEscalation 'narrative-distance-and-pov\.md' 'Style-preservation specialist routing must include narrative distance / POV.'
Require-Match $styleEscalation 'prose-rhythm\.md' 'Style-preservation specialist routing must include prose rhythm.'
Require-Match $styleEscalation '(?is)Do not load either specialist just because.*Escalate only when' 'Style-preservation routing must keep specialist loading conditional.'
Require-Match $styleEscalation '(?is)does not authorize universal deep POV.*Preserve intentional distance.*monotone.*repetition' 'Style-preservation routing must protect intentional distance and rhythm signatures.'
Require-Match $styleEscalation '(?is)expression layer.*Do not convert.*durable canon' 'Style-preservation routing must not leak craft choices into canon state.'
Require-Match $antiCraft 'narrative-distance-and-pov\.md' 'Anti-AI guidance must route structural POV/distance symptoms to the specialist.'
Require-Match $antiCraft 'prose-rhythm\.md' 'Anti-AI guidance must route structural cadence symptoms to the rhythm specialist.'
Require-Match $antiCraft '(?is)structural, not lexical.*Do not use these specialists as mandatory passes' 'Anti-AI guidance must recognize craft-level AI flavour without forcing specialist passes universally.'
Require-Match $antiCraft '(?is)Do not force deep POV.*delete all filter verbs.*maximize sentence-length variance.*erase deliberate monotone' 'Anti-AI routing must reject the four main over-correction modes.'
Require-Match $outlineCraft '(?is)Do not add prose-craft bureaucracy to every outline.*narrative-distance-and-pov\.md.*prose-rhythm\.md' 'Outline planning must conditionally route both prose-craft specialists without making them mandatory.'
Require-Match $outlineCraft '(?is)POV / Lens Plan.*POV owner.*Access boundary.*distance or movement.*Transition point' 'Outline planning must expose POV ownership, access boundaries, distance movement, and handoff when material.'
Require-Match $outlineCraft '(?is)Prose Rhythm / Delivery.*Intended effect.*Deliberate rhythmic device.*Landing or transition' 'Outline planning must expose effect-first rhythm constraints when material.'
Require-Match $outlineCraft '(?is)Do not force deep POV.*Do not prescribe sentence-length variance.*expression-layer constraints.*must not invent story facts' 'Outline craft routing must reject deep-POV defaults, metric rhythm plans, and canon invention.'
Require-Match $sourceMap '(?i)narrative-distance-and-pov.*Calliope-Editor/writing-skills' 'Source map must record the narrative-distance inspiration.'
Require-Match $sourceMap '(?i)prose-rhythm.*Calliope-Editor/writing-skills' 'Source map must record the prose-rhythm inspiration.'
Require-Match $sourceMap '(?i)Calliope-Editor/writing-skills.*MIT' 'Source map must record the Calliope MIT license.'
Require-Match $rootReadme 'skills/sheep-story/references/narrative-distance-and-pov\.md' 'Root README must expose the canonical narrative-distance / POV path.'
Require-Match $rootReadme 'skills/sheep-story/references/prose-rhythm\.md' 'Root README must expose the canonical prose-rhythm path.'
Require-Match $rootReadme '(?i)representative navigation map.*not an exhaustive inventory' 'Root README must not pretend its selected package map is exhaustive.'
Require-Match $skillReadme 'narrative-distance-and-pov\.md' 'Skill README must expose the narrative-distance / POV engine.'
Require-Match $skillReadme 'prose-rhythm\.md' 'Skill README must expose the prose-rhythm engine.'
Require-Match $skillReadme '(?i)representative navigation map.*complete inventory' 'Skill README must mark its file list as representative rather than exhaustive.'

# Behavior regressions: anchors are scoped to the prompt / expected / bad / pass sections.
# Prompt anchors include actual prose witnesses, so a prose rewrite must be possible rather than merely discussed.
Test-BehaviorSpec 'tests/52-narrative-distance-pov.md' @(
    'close third-person through Mara',
    'cannot read his thoughts',
    'She saw Ren standing across the engine room',
    'Mara noticed the emergency light only then',
    'privately he was already planning to abandon her',
    'engine room became a grid of black steel',
    'deliberately pulls back',
    'do not assume third person means distant'
) @(
    'Mara as the current POV owner',
    'grammatical person and narrative distance',
    'unsupported private plan',
    'filter verbs by function',
    'deliberate pullback',
    'pump / bypass / auxiliary-bus facts'
) @(
    'private thoughts.*limited POV|limited POV.*private thoughts',
    'Deletes every instance.*filter',
    'maximum closeness',
    'first person',
    'fragments everywhere',
    'Adds new facial expressions.*motives.*sensory'
) @(
    'POV ownership',
    'limited epistemic access',
    'grammatical person.*narrative distance',
    'filter verbs.*contextual',
    'unauthorized Ren interiority',
    'preserve meaning'
)

Test-BehaviorSpec 'tests/53-prose-rhythm.md' @(
    'five medium-length sentences',
    'The generator coughed once beneath the deck',
    'Still here\.\s*Still here\.\s*Still here\.',
    'White light\. No sound\. Then sound\.',
    'long sentence.*accumulates',
    'nothing left',
    'Do not force a short-long-short-long',
    'not an audio recording',
    'sentence-and-paragraph cadence problem'
) @(
    'sentence-length variance.*quality score',
    'accidental medium-sentence drone',
    'three-line "Still here\." ritual refrain',
    'intentional clipped monotone',
    'long accumulating maintenance-failure sentence',
    'fake variety',
    'prose rhythm from macro story pacing',
    'human ear',
    'generator.*pump.*fan.*battery.*pressure-regulator.*breaker'
) @(
    'numerical sentence-variance target',
    'short and long sentences mechanically|fragment confetti',
    'Still here\.',
    'long accumulating sentence solely because it is long',
    'chapter pacing',
    'listened.*text'
) @(
    'accidental drone.*intentional monotone',
    'refrain.*accumulation',
    'without optimizing a metric',
    'prose rhythm.*macro pacing',
    'semantic content.*technical facts',
    'acoustic certainty'
)

if ($failures.Count -gt 0) {
    throw ($failures -join [Environment]::NewLine)
}

'SheepStory prose-craft checks passed.'
