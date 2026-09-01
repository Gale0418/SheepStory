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
        [string[]]$RequiredAnchors
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
    if ($positiveCount -lt 4) {
        $failures.Add("Behavior spec $RelativePath needs at least four positive decisions")
    }
    if ($negativeCount -lt 4) {
        $failures.Add("Behavior spec $RelativePath needs at least four rejected decisions")
    }

    foreach ($anchor in $RequiredAnchors) {
        if ($content -notmatch $anchor) {
            $failures.Add("Behavior spec $RelativePath is missing scenario anchor: $anchor")
        }
    }

    if ($pass -notmatch '(?i)evidence|observable|causal|context|consequence|contract') {
        $failures.Add("Behavior spec $RelativePath pass criteria must require observable or evidence-bounded behavior")
    }
}

$skill = Read-RequiredText 'skills/sheep-story/SKILL.md'
$rootSkill = Read-RequiredText 'SKILL.md'
$card = Read-RequiredText 'skills/sheep-story/references/character-card-engineering.md'
$contrast = Read-RequiredText 'skills/sheep-story/references/contrast-and-dissonance.md'
$misunderstanding = Read-RequiredText 'skills/sheep-story/references/misunderstanding-tragedy.md'
$tone = Read-RequiredText 'skills/sheep-story/references/reader-promise-and-tone.md'
$dialogue = Read-RequiredText 'skills/sheep-story/references/dialogue-checklist.md'
$memory = Read-RequiredText 'skills/sheep-story/references/story-memory-ops.md'
$foundation = Read-RequiredText 'skills/sheep-story/references/story-foundation.md'
$characterTemplate = Read-RequiredText 'templates/story-project/characters/_template.md'
$projectBrief = Read-RequiredText 'templates/story-project/project-brief.md'
$continuityState = Read-RequiredText 'templates/story-project/continuity/state.md'
$cardAudit = Read-RequiredText 'templates/cockpit/character-card-audit.md'
$misunderstandingLedger = Read-RequiredText 'templates/cockpit/misunderstanding-ledger.md'
$readerPromiseTemplate = Read-RequiredText 'templates/cockpit/reader-promise.md'
$researchMethod = Read-RequiredText 'docs/character-card-research-method.md'
$systemMap = Read-RequiredText 'docs/character-story-engine-map.md'

foreach ($path in @(
    'references/character-card-engineering.md',
    'references/contrast-and-dissonance.md',
    'references/misunderstanding-tragedy.md',
    'references/reader-promise-and-tone.md'
)) {
    Require-Match $skill ([regex]::Escape($path)) "Canonical skill must route $path"
}

foreach ($path in @(
    'skills/sheep-story/references/character-card-engineering.md',
    'skills/sheep-story/references/contrast-and-dissonance.md',
    'skills/sheep-story/references/misunderstanding-tragedy.md',
    'skills/sheep-story/references/reader-promise-and-tone.md'
)) {
    Require-Match $rootSkill ([regex]::Escape($path)) "Root compatibility skill must route $path"
}

Require-Match $card '(?i)Greeting Compiler' 'Character-card guidance must define a Greeting Compiler.'
Require-Match $card '(?i)User Role Contract' 'Character-card guidance must define a User Role Contract.'
Require-Match $card '(?i)Example Dialogue Coverage' 'Character-card guidance must define example-dialogue coverage.'
Require-Match $card '(?i)Absolute-Language and Goal-Lock Audit' 'Character-card guidance must audit absolute language and goal lock.'
Require-Match $card '(?i)Failure-State Continuity' 'Character-card guidance must preserve failure-state continuity.'
Require-Match $card '(?i)Player Review as Evidence' 'Character-card guidance must treat player reviews as evidence.'
Require-Match $card '(?i)configuration|model.*preset|preset.*model' 'Character-card review attribution must preserve runtime configuration uncertainty.'
Require-Match $card '(?i)regression' 'Character-card guidance must turn concrete failures into regression probes.'

Require-Match $contrast '(?i)Gap appeal.*audience response|audience response.*Gap appeal' 'Contrast guidance must distinguish gap appeal from a standalone trait.'
Require-Match $contrast '(?i)What the character says.*What they do.*body' 'Contrast guidance must separate words, actions, and body.'
Require-Match $contrast '(?i)Hypocrisy' 'Contrast guidance must distinguish hypocrisy.'
Require-Match $contrast '(?i)Self-Deception' 'Contrast guidance must distinguish self-deception.'
Require-Match $contrast '(?i)Value-Action Conflict' 'Contrast guidance must distinguish value-action conflict.'
Require-Match $contrast '(?i)Mechanical Reversal' 'Contrast guidance must reject automatic opposite-language decoding.'
Require-Match $contrast '(?i)Abuse Laundering' 'Contrast guidance must preserve consequences for harmful behavior.'

Require-Match $misunderstanding '(?i)Canonical truth' 'Misunderstanding guidance must preserve canonical truth.'
Require-Match $misunderstanding '(?i)Repair Windows' 'Misunderstanding guidance must define repair windows.'
Require-Match $misunderstanding '(?i)Irreversible Threshold' 'Misunderstanding guidance must define an irreversible threshold.'
Require-Match $misunderstanding '(?i)locally rational|rational under' 'Misunderstanding guidance must preserve character rationality under partial information.'
Require-Match $misunderstanding '(?i)interactive|player' 'Misunderstanding guidance must handle interactive clarification.'
Require-Match $misunderstanding '(?i)One-Sentence Tragedy' 'Misunderstanding guidance must reject one-sentence tragedy.'
Require-Match $misunderstanding '(?i)Coincidence Barricade' 'Misunderstanding guidance must reject coincidence barricades.'
Require-Match $misunderstanding '(?i)aftermath' 'Misunderstanding guidance must require aftermath.'

Require-Match $tone '(?i)Reader Promise' 'Tone guidance must define a Reader Promise.'
Require-Match $tone '(?i)Tonal Hazard Stack' 'Tone guidance must define tonal hazard stacks.'
Require-Match $tone '(?i)Darkness Budget' 'Tone guidance must track darkness load.'
Require-Match $tone '(?i)Recovery and Respite' 'Tone guidance must preserve recovery and respite.'
Require-Match $tone '(?i)Influence Stack Translation' 'Tone guidance must translate influence shorthand into functions.'
Require-Match $tone '(?i)do not imitate|not imitation|rather than imitating' 'Tone guidance must prohibit creator-style imitation.'
Require-Match $tone '(?i)Darkness is not tragedy' 'Tone guidance must separate darkness from tragedy.'
Require-Match $tone '(?i)Ending Contract' 'Tone guidance must define an ending contract.'

Require-Match $dialogue 'contrast-and-dissonance\.md' 'Dialogue guidance must route word-action contrast.'
Require-Match $dialogue 'misunderstanding-tragedy\.md' 'Dialogue guidance must route misunderstanding-driven exchanges.'
Require-Match $dialogue 'character-card-engineering\.md' 'Dialogue guidance must route card examples and greetings.'
Require-Match $memory '(?i)Active Misunderstandings|Misunderstanding State' 'Story memory must track active misunderstandings.'
Require-Match $memory '(?i)Reader-Promise / Tone State' 'Story memory must track durable tonal obligations.'
Require-Match $foundation '(?i)Reader Promise' 'Story foundation must include an optional reader promise.'
Require-Match $foundation '(?i)User / Player Role Contract' 'Story foundation must include a user/player role contract when relevant.'

Require-Match $characterTemplate '(?i)Optional Contrast / Dissonance' 'Character template must include optional contrast fields.'
Require-Match $characterTemplate '(?i)Failure-State Continuity' 'Character template must include failure-state continuity.'
Require-Match $projectBrief '(?i)Reader Experience / Core Promise' 'Project brief must record reader experience.'
Require-Match $projectBrief '(?i)User / Player Role Contract' 'Project brief must record user-role assumptions.'
Require-Match $continuityState '(?i)Active Misunderstandings' 'Continuity state must track active misunderstandings.'
Require-Match $continuityState '(?i)Reader-Promise / Tone State' 'Continuity state must track durable tone state.'
Require-Match $cardAudit '(?i)Prompt-to-Behavior Attribution' 'Card audit template must support prompt-to-behavior attribution.'
Require-Match $misunderstandingLedger '(?i)Repair Windows' 'Misunderstanding ledger must track repair windows.'
Require-Match $readerPromiseTemplate '(?i)Tonal Hazard Stack' 'Reader-promise template must track tonal hazards.'
Require-Match $researchMethod '(?i)configuration confounds' 'Research method must document configuration confounds.'
Require-Match $systemMap '(?i)Full Pipeline' 'System map must organize the complete character/story pipeline.'

Reject-Match $contrast '(?i)"I hate you"\s*(always|=)\s*"I love you"' 'Contrast guidance must not endorse automatic opposite meaning.'
Reject-Match $tone '(?i)imitate the style of' 'Tone guidance must not instruct imitation of named creators.'

Test-BehaviorSpec 'tests/46-character-card-causal-audit.md' @(
    'goal lock|at all costs',
    'greeting',
    'user-role|in love',
    'player|model|preset'
)
Test-BehaviorSpec 'tests/47-contrast-and-word-action-gap.md' @(
    'Expected surface|baseline',
    'actions|body',
    '反差萌|gap',
    'romance|opposite'
)
Test-BehaviorSpec 'tests/48-misunderstanding-cascade.md' @(
    'canonical truth',
    'repair window',
    'irreversible',
    'interactive|user clarifies'
)
Test-BehaviorSpec 'tests/49-reader-promise-tone-stack.md' @(
    'Reader Promise|reader promise',
    'Urobuchi|Yuasa|Nagatsuki|Inoue',
    'recovery',
    'imitate|imitation'
)

if ($failures.Count -gt 0) {
    throw ($failures -join [Environment]::NewLine)
}

'SheepStory character-engine checks passed.'
