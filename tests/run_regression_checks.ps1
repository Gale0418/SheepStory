[CmdletBinding()]
param(
    [string]$ProjectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'
$failures = [System.Collections.Generic.List[string]]::new()

function Read-ProjectText {
    param([string]$RelativePath)
    $path = Join-Path $ProjectRoot $RelativePath
    if (-not (Test-Path -LiteralPath $path)) {
        $failures.Add("Missing required path: $RelativePath")
        return ''
    }
    Get-Content -Raw -LiteralPath $path
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

$manifestText = Read-ProjectText '.codex-plugin/plugin.json'
$rootSkill = Read-ProjectText 'SKILL.md'
$skill = Read-ProjectText 'skills/sheep-story/SKILL.md'
$calibration = Read-ProjectText 'skills/sheep-story/references/voice-calibration.md'
$vocalImpact = Read-ProjectText 'skills/sheep-story/references/vocal-impact.md'
$memory = Read-ProjectText 'skills/sheep-story/references/story-memory-ops.md'
$cockpit = Read-ProjectText 'skills/sheep-story/references/story-cockpit-workflow.md'
$editorial = Read-ProjectText 'skills/sheep-story/references/editorial-rewrite.md'
$foundation = Read-ProjectText 'skills/sheep-story/references/story-foundation.md'
$architecture = Read-ProjectText 'skills/sheep-story/references/story-architecture.md'
$opposition = Read-ProjectText 'skills/sheep-story/references/opposition-design.md'
$projectBrief = Read-ProjectText 'templates/story-project/project-brief.md'
$promiseTemplate = Read-ProjectText 'templates/story-project/continuity/promises/_template.md'
$chapterContract = Read-ProjectText 'skills/sheep-story/references/chapter-contract.md'
$cockpitChapterContract = Read-ProjectText 'templates/cockpit/chapter-contract.md'
$projectLayout = Read-ProjectText 'skills/sheep-story/references/story-project-layout.md'
$conflictPressure = Read-ProjectText 'skills/sheep-story/references/conflict-pressure.md'
$outlineGate = Read-ProjectText 'skills/sheep-story/references/outline-gate.md'
$skillReadme = Read-ProjectText 'skills/sheep-story/README.md'
$cockpitExport = Read-ProjectText 'templates/cockpit/export-prompt.md'
$fictionDesign = Read-ProjectText 'docs/fiction-skill-design.md'
$webuiDesign = Read-ProjectText 'docs/webui-design.md'
$presentationPlan = Read-ProjectText 'docs/superpowers/plans/2026-07-10-codex-plugin-presentation.md'
$quickModeTest = Read-ProjectText 'tests/11-quick-mode.md'
$worldBookTemplate = Read-ProjectText 'templates/story-project/worldbuilding/world-book.md'
$characterTemplate = Read-ProjectText 'templates/story-project/characters/_template.md'
$houseProfile = Read-ProjectText 'skills/sheep-story/style-profiles/sheepstory-house-style.md'
$zhTwProfile = Read-ProjectText 'skills/sheep-story/style-profiles/zh-tw-fiction.md'
$authoringLab = Read-ProjectText 'skills/sheep-story/references/authoring-laboratory.md'
$stateLedgers = Read-ProjectText 'skills/sheep-story/references/story-state-ledgers.md'
$recoveryRuns = Read-ProjectText 'skills/sheep-story/references/project-recovery-and-runs.md'
$pacingExtensions = Read-ProjectText 'skills/sheep-story/references/pacing-reveal-and-extensions.md'
$labTemplate = Read-ProjectText 'templates/cockpit/authoring-lab.md'
$ledgerTemplate = Read-ProjectText 'templates/cockpit/story-state-ledger.md'
$advisoryTemplate = Read-ProjectText 'templates/cockpit/pacing-reveal-advisory.md'
$runManifestTemplate = Read-ProjectText 'templates/ops/run-manifest.md'
$extensionTemplate = Read-ProjectText 'templates/ops/extension-contract.md'

function Get-MarkdownSection {
    param(
        [string]$Content,
        [string]$Heading
    )

    $escapedHeading = [regex]::Escape($Heading)
    $match = [regex]::Match(
        $Content,
        "(?ms)^##\s+$escapedHeading\s*\r?\n(?<body>.*?)(?=\r?\n##\s+|\z)"
    )
    if ($match.Success) {
        return $match.Groups['body'].Value
    }
    return ''
}

function Test-BehaviorSpec {
    param(
        [string]$RelativePath,
        [string[]]$ScenarioAnchors
    )

    $content = Read-ProjectText $RelativePath
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

    $expectedBulletMatches = [regex]::Matches($expected, '(?m)^\s*-\s+(?<body>.+)$')
    $badBulletMatches = [regex]::Matches($bad, '(?m)^\s*-\s+(?<body>.+)$')
    $expectedBullets = $expectedBulletMatches.Count
    $badBullets = $badBulletMatches.Count
    if ($expectedBullets -lt 4) {
        $failures.Add("Behavior spec $RelativePath needs at least four positive decisions")
    }
    if ($badBullets -lt 4) {
        $failures.Add("Behavior spec $RelativePath needs at least four rejected decisions")
    }

    $expectedScenarioBullets = @($expectedBulletMatches | Where-Object {
        $bullet = $_.Groups['body'].Value
        @($ScenarioAnchors | Where-Object { $bullet -match $_ }).Count -gt 0
    }).Count
    $badScenarioBullets = @($badBulletMatches | Where-Object {
        $bullet = $_.Groups['body'].Value
        @($ScenarioAnchors | Where-Object { $bullet -match $_ }).Count -gt 0
    }).Count
    if ($expectedScenarioBullets -lt 3 -or $badScenarioBullets -lt 3) {
        $failures.Add("Behavior spec $RelativePath must carry scenario anchors into at least three distinct positive and three distinct negative decisions")
    }
    if ($expected -eq $bad) {
        $failures.Add("Behavior spec $RelativePath positive and negative decisions must differ")
    }
    if ($pass -notmatch '(?i)evidence|context|consequence|function') {
        $failures.Add("Behavior spec $RelativePath pass criteria must require observable reasoning")
    }
}

if ($manifestText) {
    $manifest = $manifestText | ConvertFrom-Json
    if ($manifest.name -ne 'sheep-story') {
        $failures.Add('Plugin name must be sheep-story.')
    }
    if (-not ($manifest.interface.defaultPrompt | Where-Object { $_ -match '(?i)\bUse sheep-story\b' })) {
        $failures.Add('At least one starter prompt must explicitly invoke sheep-story.')
    }
}

Require-Match $skill '(?m)^name:\s*sheep-story\s*$' 'Canonical skill name must be sheep-story.'
Require-Match $skill '(?m)^description:\s*Use when\b' 'Canonical skill description must start with Use when and describe triggering conditions.'
Require-Match $rootSkill '(?m)^description:\s*Use when\b' 'Root compatibility description must start with Use when and describe triggering conditions.'
foreach ($mode in 'Quick', 'Standard', 'Longform') {
    Require-Match $skill "(?m)^###?\s+$mode\b" "Canonical skill must define $mode mode."
}
Require-Match $skill '(?i)canon-affecting' 'Idea routing must distinguish canon-affecting ideas.'
Reject-Match $skill '(?i)each scene beat must have desire, obstacle, cost, turn, irreversible change' 'Irreversibility must not be mandatory for every beat.'
Reject-Match $calibration '(?i)hard-SF\s*/\s*military-SF friction' 'Voice calibration must be genre-neutral.'
Require-Match $houseProfile '(?i)hard-SF|military-SF' 'Optional house profile must preserve the moved hard-SF preferences.'
Require-Match $zhTwProfile '(?i)zh-TW|Taiwan|臺灣|台灣' 'A zh-TW fiction profile must define Taiwan Traditional Chinese usage.'
Require-Match $zhTwProfile '翻譯腔|直譯' 'The zh-TW profile must address translation-like phrasing.'
Require-Match $memory '(?m)^## Memory Patch Proposal\s*$' 'Memory operations must define a Memory Patch Proposal phase.'
Require-Match $memory '(?m)^## Apply Authorization\s*$' 'Memory operations must define apply authorization.'
Require-Match $memory '(?m)^## Post-Apply Validation\s*$' 'Memory operations must define post-apply validation.'
Reject-Match $cockpit '(?i)A chapter cannot draft until it has a contract' 'Cockpit contract policy must respect operating modes.'
Require-Match $skill 'references/editorial-rewrite\.md' 'Canonical skill must route editorial rewrite work to its dedicated reference.'
Require-Match $skill 'references/vocal-impact\.md' 'Canonical skill must route applicable low-semantic vocal lines to Vocal Impact.'
Require-Match $vocalImpact '(?i)does not need to add facts|does not need to add new facts' 'Vocal Impact must distinguish informational content from dramatic function.'
Require-Match $vocalImpact '(?is)affect.*embodiment.*rhythm.*timing' 'Vocal Impact must cover affect, embodiment, rhythm, and timing.'
Require-Match $vocalImpact '(?i)low semantic content.*not permission|low-semantic content.*not permission' 'Vocal Impact must reject arbitrary low-semantic writing.'
Require-Match $vocalImpact '(?i)abstract nouns.*fate.*eternity|fate.*eternity.*scene-specific' 'Vocal Impact must reject unearned abstract grandeur.'
Require-Match $vocalImpact '(?i)judge the line in its scene|contextual charge' 'Vocal Impact must evaluate vocal lines in context.'
Require-Match $vocalImpact '(?i)themed shop.*eccentric employee|themed places and eccentric speakers' 'Vocal Impact must allow purposeful incongruity from established places or speakers.'
Require-Match $vocalImpact '(?i)non-lexical.*not.*fixed|fixed.*dictionary|morphology.*prosody.*turn position' 'Vocal Impact must read non-lexical sound from multiple contextual cues rather than a fixed emotion dictionary.'
Require-Match $vocalImpact '(?is)stable baseline.*pressure variation.*social mask.*recovery' 'Vocal Impact must model voice signatures as baseline, pressure variation, social mask, and recovery or cost.'
Require-Match $vocalImpact '(?i)mask on.*crack.*mask off|mask on.*crack.*off' 'Vocal Impact must make an eccentric speaker''s mask cycle observable without requiring a crack every time.'
Require-Match $vocalImpact '(?is)function.*build-up.*movement.*constraint.*cost.*response.*consequence' 'Vocal Impact must ground chants and battle cries in function, action, constraints, costs, responses, and consequences.'
Require-Match $vocalImpact '(?i)delivery, pitch, pause, draw, breath, ritual, mask, voice_asset' 'Vocal Impact metadata guidance must use the finite engine-neutral delivery field set.'
Require-Match $vocalImpact '(?i)unknown.*flag|flag.*unknown' 'Vocal Impact must flag unknown vocal cues instead of inventing their meaning.'
Require-Match $vocalImpact '(?i)optional.*profile|not universal.*prose|subtitle' 'Vocal Impact must keep subtitle limits optional rather than universal prose rules.'
Require-Match $vocalImpact '(?i)blanket ban.*tildes|two-character maximum|density.*necessity.*readability' 'Vocal Impact must use density, necessity, and readability guardrails instead of hard bans on sound notation.'
Require-Match $vocalImpact '(?i)breath.*injury.*distance.*fatigue.*vocal folds' 'Vocal Impact must account for breath, injury, distance, fatigue, and vocal-fold consequences at high intensity.'
Require-Match $vocalImpact '(?i)context window.*multiple signals|one loudness.*cannot' 'Vocal Impact must not treat a single loudness value as proof of a climax.'

Test-BehaviorSpec 'tests/28-vocal-evidence-and-voice-signature.md' @(
    'breathy laugh|laugh that masks pain|laugh'
    'clipped gasp|gasp'
    'hoarse|exertion'
    'unfamiliar interjection|ritual'
)
Test-BehaviorSpec 'tests/29-ritual-media-and-intensity.md' @(
    'call-and-response|dropped beat|silent'
    'battle cry|injured|out of breath'
    'cashier|mask-on|crack'
    'metadata|voice_asset|player state|translation text'
)
Test-BehaviorSpec 'tests/30-reader-consensus.md' @('reader|lens|reaction', 'canon|story state', 'evidence|interpretation', 'revision|review|provenance')
Test-BehaviorSpec 'tests/31-lab-sandbox-isolation.md' @('experiment|sandbox', 'story|character|canon|canonical', 'event|relationship|state', 'provenance|mutation|approval')
Test-BehaviorSpec 'tests/32-non-canon-character-lab.md' @('character|cast', 'canon|state', 'evidence|biography', 'capability|ceiling|backstory|relationship', 'contradiction')
Test-BehaviorSpec 'tests/33-alternate-takes.md' @('take', 'canon', 'promise')
Test-BehaviorSpec 'tests/34-bridge-writing.md' @('endpoint|event', 'bridge|connective', 'contradiction|seam|continuity', 'canon|approval', 'capability|promise|timeline')
Test-BehaviorSpec 'tests/35-claim-provenance.md' @('claim', 'provenance', 'inference', 'canon')
Test-BehaviorSpec 'tests/36-event-timeline-ledger.md' @('time|timeline|ordering|simultaneity', 'event|causality', 'evidence|participant|location|trigger|consequence', 'canon|ledger|editorial')
Test-BehaviorSpec 'tests/37-promise-ledger-reuse.md' @('promise', 'evidence', 'chapter')
Test-BehaviorSpec 'tests/38-editorial-issues.md' @('issue', 'evidence', 'status')
Test-BehaviorSpec 'tests/39-import-quarantine.md' @('import', 'preview', 'quarantine', 'provenance')
Test-BehaviorSpec 'tests/40-run-trace-snapshot-rollback.md' @('run', 'snapshot', 'rollback', 'approval')
Test-BehaviorSpec 'tests/41-pacing-reveal-advisory.md' @('pacing', 'reveal', 'reader')
Test-BehaviorSpec 'tests/42-extension-boundary.md' @('extension|continue', 'branch|parent', 'capability|ceiling', 'canon|canonical|promotion|authorization', 'contradiction|stop condition')
Test-BehaviorSpec 'tests/43-context-budget-parser-boundary.md' @('context|source|omitted|truncated', 'parser|structure|metadata', 'intent|consensus', 'canon|canonical|mutate', 'evidence|truth')
Test-BehaviorSpec 'tests/44-multiple-truth.md' @('reading|interpretation', 'canon|canonical|story bible', 'evidence', 'dissent|consensus', 'ledger|branch|authorization')
Test-BehaviorSpec 'tests/45-deterministic-validator-boundary.md' @('event', 'claim', 'promise', 'source')
foreach ($mode in 'Natural', 'Concise', 'Plain Language', 'Conversational', 'Voice-Preserving') {
    Require-Match $editorial "(?m)^###?\s+$mode\b" "Editorial rewrite guidance must define $mode mode."
}
Require-Match $editorial '(?i)facts?.*claims?.*stance.*uncertainty' 'Editorial rewrite guidance must preserve facts, claims, stance, and uncertainty.'
Require-Match $editorial '(?i)do not add|must not add' 'Editorial rewrite guidance must prohibit unsupported semantic additions.'
Require-Match $editorial '(?i)requested mode.*(?:bleed|drift|mix)|(?:bleed|drift|mix).*requested mode' 'Editorial final check must prevent unrequested mode bleed.'
Require-Match $skill '(?i)run the Final Check from `references/editorial-rewrite\.md`' 'Canonical skill must require the editorial Final Check before output.'
Require-Match $skill 'references/story-foundation\.md' 'Canonical skill must route new-story setup through the Story Foundation reference.'
foreach ($entry in 'World-First', 'Character-First', 'Situation / Image / Theme', 'No Seed') {
    Require-Match $foundation "(?m)^###?\s+$([regex]::Escape($entry))\b" "Story Foundation must define the $entry entry path."
}
Require-Match $foundation '(?i)one (?:question|high-leverage question) at a time' 'Story Foundation must ask one high-leverage question at a time.'
Require-Match $foundation '(?i)verified.*inferred.*unknown' 'Story Foundation must classify canon as verified, inferred, or unknown.'
Require-Match $foundation '(?i)do not draft prose|no prose' 'Story Foundation must prohibit prose during setup.'
Reject-Match $foundation '(?i)Taipei|台北|lost technology|失落科技' 'Story Foundation must not contain project-specific city or lost-technology defaults.'
Require-Match $worldBookTemplate '(?m)^## (?:Rules|Rules / Limits / Costs)\b' 'World Book template must capture rules, limits, and costs.'
Require-Match $worldBookTemplate '(?m)^## (?:Daily Life|Lived Consequences)\b' 'World Book template must capture lived consequences.'
Require-Match $characterTemplate '(?m)^## Agency\b' 'Character Card template must capture independent agency.'
Require-Match $characterTemplate '(?m)^## Contradiction\b' 'Character Card template must capture contradiction.'
Require-Match $characterTemplate '(?m)^## Flaw / Coping Strategy\b' 'Character Card template must distinguish a flaw from its coping strategy.'
Require-Match $characterTemplate '(?m)^## Capability Ceiling\b' 'Character Card template must define a capability ceiling.'
Require-Match $skill '(?i)as soon as the user supplies.*project-brief\.md' 'Canonical setup must record durable user requirements before Foundation approval.'
Require-Match $skill '(?i)Quick.*(?:bypass|skip|simplif).*(?:Foundation|World Book|Character Cards)' 'Canonical setup must simplify Foundation intake for bounded Quick work.'
Require-Match $skill 'references/story-architecture\.md' 'Canonical skill must route complete-story planning to Story Architecture.'
Require-Match $skill 'references/opposition-design\.md' 'Canonical skill must route applicable conflict planning to Opposition Design.'
Require-Match $architecture '(?i)four-act.*(?:optional|not mandatory)|(?:optional|not mandatory).*four-act' 'Four-act structure must be explicitly optional.'
$mandatoryFourActPattern = '(?i)four-act.{0,80}(?:is|remains|becomes)?\s*(?<!not )(?:mandatory|required)|four-act.{0,80}must\s+be\s+used|(?:must|required to)\s+(?:use|follow|adopt).{0,40}(?:four-act|four acts)'
Reject-Match $architecture $mandatoryFourActPattern 'Story Architecture must not make four-act structure mandatory.'
Require-Match $architecture '(?i)core (?:dramatic )?question' 'Story Architecture must require a core dramatic question.'
Require-Match $architecture '(?i)opening-ending resonance.*optional|optional.*opening-ending resonance' 'Opening-ending resonance must remain optional.'
$numericKpiPattern = '(?i)(?:climax|turn|beat).{0,30}every\s+(?:\d+|one|two|three|four|five|six|seven|eight|nine|ten|hundred|thousand)(?:[\s-]+(?:hundred|thousand))?.{0,20}words|dialogue.{0,30}(?:\d+|one|two|three|four|five|six|seven|eight|nine|ten|forty)\s*(?:%|percent)|(?:\d+|one|two|three|four|five|six|seven|eight|nine|ten|seventy|eighty)\s*(?:%|percent).{0,30}(?:promise|payoff)|≥\s*\d+%|payoff[- ]rate\s*[:=]\s*\d+'
Reject-Match $architecture $numericKpiPattern 'Story Architecture must not impose numeric pacing, dialogue, or payoff KPIs.'
Require-Match $opposition '(?m)^## Opposition Card\b' 'Opposition Design must define an Opposition Card.'
Require-Match $opposition '(?i)sympathy.*optional|need not be sympathetic|does not require sympathy' 'Opposition coherence must not require sympathy.'
Require-Match $opposition '(?i)independent action|acts? when the protagonist is absent' 'Opposition must have independent agency.'
Require-Match $projectBrief '(?m)^## Project-Specific Immutable Truths\b' 'Project Brief must isolate project-specific immutable truths.'
Require-Match $projectBrief '(?m)^## Capability Ceilings\b' 'Project Brief must capture capability ceilings.'
Require-Match $projectBrief '(?m)^## Forbidden Elements / Outcomes\b' 'Project Brief must capture forbidden elements and outcomes.'
Require-Match $promiseTemplate '(?i)proposed.*open.*advanced.*reframed.*paid.*delayed.*contradicted.*intentionally-unresolved.*retired' 'Promise template must define the complete lifecycle.'
Require-Match $promiseTemplate '(?m)^## Closure Evidence\b' 'Promise template must require closure evidence.'
Require-Match $authoringLab '(?is)(?=.*reader simulation)(?=.*non-canon character)(?=.*alternate takes)(?=.*bridge writing)' 'Authoring Laboratory must cover all four sandbox experiments.'
Require-Match $authoringLab '(?is)(?=.*evidence)(?=.*dissent)(?=.*uncertainty)' 'Authoring Laboratory must require evidence, dissent, and uncertainty.'
Require-Match $authoringLab '(?i)majority response.*canon|consensus.*cannot prove' 'Reader consensus must not promote itself to canon.'
Require-Match $authoringLab '(?i)lab files must not.*canon|No lab result may promote itself' 'Authoring Laboratory must isolate sandbox output from canon.'
Require-Match $stateLedgers '(?i)single canon(?:ical)? source|single truth source' 'State ledgers must preserve a single canonical source.'
Require-Match $stateLedgers '(?i)claim provenance|provenance' 'State ledgers must track claim provenance.'
Require-Match $stateLedgers '(?i)event.*timeline|timeline.*event' 'State ledgers must track events and timeline uncertainty.'
Require-Match $stateLedgers '(?i)existing.*promise|promise.*lifecycle' 'State ledgers must reuse existing promise lifecycle.'
Require-Match $stateLedgers '(?i)editorial issue' 'State ledgers must define editorial issues separately from canon.'
Require-Match $ledgerTemplate '(?i)Origin.*Confidence.*Competing reading.*First seen.*Last checked.*Affected entities.*Promotion authorization' 'Claim ledger must capture full provenance and promotion fields.'
Require-Match $ledgerTemplate '(?i)Location.*Participants.*Trigger' 'Event ledger must capture location, participants, and trigger.'
Require-Match $ledgerTemplate '(?i)Severity.*Owner.*Resolution link' 'Issue ledger must capture severity, owner, and resolution link.'
Require-Match $ledgerTemplate '(?is)Claims.*Source.*Provenance.*Status' 'Claim rows must expose source, provenance, and status.'
Require-Match $ledgerTemplate '(?is)Events / Timeline.*Source.*Provenance.*Status' 'Event rows must expose source, provenance, and status.'
Require-Match $ledgerTemplate '(?is)Promise References.*Source.*Provenance.*Status' 'Promise rows must expose source, provenance, and status.'
Require-Match $ledgerTemplate '(?is)Editorial Issues.*Source.*Provenance.*Status' 'Editorial issue rows must expose source, provenance, and status.'
Require-Match $stateLedgers '(?i)deterministic validator' 'State ledgers must define a deterministic validator boundary.'
Require-Match $stateLedgers '(?i)same snapshot.*same ordered findings|same ordered findings.*same snapshot' 'Deterministic validation must be stable for identical inputs.'
Require-Match $stateLedgers '(?i)must not infer events from prose|must not.*interpret irony or metaphor' 'Deterministic validation must not pretend to understand prose.'
Require-Match $recoveryRuns '(?i)import preview.*quarantine|quarantine.*import preview' 'Recovery contracts must define import preview and quarantine.'
Require-Match $recoveryRuns '(?i)run trace|run manifest' 'Recovery contracts must define an inspectable run trace.'
Require-Match $recoveryRuns '(?i)snapshot.*rollback|rollback.*snapshot' 'Recovery contracts must define snapshot and rollback boundaries.'
Require-Match $recoveryRuns '(?i)contract-only|contract' 'Recovery guidance must remain contract-only.'
Require-Match $recoveryRuns '(?i)current-hash.*diverg|diverg.*current-hash' 'Recovery guidance must define a post-snapshot current-hash divergence guard.'
Require-Match $recoveryRuns '(?i)ownership|owned' 'Recovery guidance must define ownership.'
Require-Match $recoveryRuns '(?i)new revision.*default|default.*new revision' 'Recovery guidance must default to a new revision.'
Require-Match $recoveryRuns '(?i)three-way review|three way review' 'Recovery guidance must require manual three-way review after divergence.'
Require-Match $pacingExtensions '(?i)advisory.*pacing.*reveal|pacing.*reveal.*advisory' 'Pacing and reveal guidance must remain advisory.'
Reject-Match $pacingExtensions '(?i)(?:require|impose|enforce).{0,30}(?:fixed|KPI|percentage|ratio|interval)' 'Pacing guidance must not impose fixed KPIs.'
Require-Match $pacingExtensions '(?i)export.*boundary|branch.*boundary|autonomous extension' 'Extension guidance must define export, branching, and autonomous boundaries.'
Require-Match $pacingExtensions '(?i)context budget.*partial|partial.*context budget' 'Extension guidance must account for context budget limits.'
Require-Match $pacingExtensions '(?i)parser.*(?:not|cannot).*intent|intent.*(?:not|cannot).*parser' 'Parser output must not claim authorial intent.'
Require-Match $labTemplate '(?i)evidence|sandbox|authorization' 'Authoring lab template must capture evidence, sandbox, and authorization.'
Require-Match $labTemplate '(?i)context-budget|Sources Loaded' 'Authoring lab template must capture context budget and loaded sources.'
Require-Match $ledgerTemplate '(?i)Claims|Events / Timeline|Promise References|Editorial Issues' 'Ledger template must cover claims, events, promises, and editorial issues.'
Require-Match $advisoryTemplate '(?i)advisory-kind|context-budget|competing' 'Advisory template must capture kind, context budget, and competing readings.'
Require-Match $advisoryTemplate '(?i)Reviewer Decision|Decision evidence|Authorization record' 'Advisory template must capture reviewer decision, evidence, and authorization.'
Require-Match $advisoryTemplate '(?i)result-completeness|Dissent|Affected promises/events' 'Advisory template must capture completeness, dissent, and affected story state.'
Require-Match $advisoryTemplate '(?i)Changed choices|Continuity effects|Merge decision' 'Advisory template must capture branch differences and merge decision.'
Require-Match $runManifestTemplate '(?i)Import Preview / Quarantine|Snapshot Boundary|Rollback Plan' 'Run manifest must capture preview, snapshot, and rollback.'
Require-Match $runManifestTemplate '(?i)ownership|Owned paths|current hashes' 'Run manifest must capture ownership and current hashes.'
Require-Match $runManifestTemplate '(?i)current-hash.*diverg|diverg.*current-hash' 'Run manifest must capture the hash divergence guard.'
Require-Match $runManifestTemplate '(?i)three-way review|three way review' 'Run manifest must require manual three-way review.'
Require-Match $runManifestTemplate '(?i)new revision|guarded atomic apply' 'Run manifest rollback must create a new revision or use a guarded atomic apply.'
Require-Match $extensionTemplate '(?i)parent branch|parent-branch|Parent snapshot' 'Extension contract must capture the parent branch.'
Require-Match $extensionTemplate '(?i)allowed paths|allowed-paths|write permissions' 'Extension contract must capture allowed paths and write permissions.'
Require-Match $extensionTemplate '(?i)Artifacts|artifacts|Validation|validation' 'Extension contract must capture artifacts and validation.'
Require-Match $extensionTemplate '(?i)approval|awaiting-approval' 'Extension contract must capture approval.'
Require-Match (Read-ProjectText 'tests/39-import-quarantine.md') '(?i)original_bytes_hash|original bytes.*encoding hash|idempotence|zero-write' 'Import behavior must cover original bytes, encoding hash, idempotence, and zero-write preview.'
Require-Match $extensionTemplate '(?i)source-snapshot|context-budget|Stop Condition|No canon mutation' 'Extension contract must define source, budget, stop, and canon boundaries.'
Require-Match $chapterContract '(?m)^## Ending Contract \(When Applicable\)\s*$' 'Chapter Contract must define a conditional ending contract.'
Require-Match $chapterContract '(?i)core (?:dramatic )?question.*answer' 'Ending Contract must answer the core dramatic question.'
Require-Match $chapterContract '(?m)^## Relevant Promise Changes \(When Applicable\)\s*$' 'Reference Chapter Contract must keep promise changes conditional.'
Require-Match $chapterContract '(?i)write `None`.*do not invent' 'Reference Chapter Contract must permit no relevant promise change.'
Require-Match $cockpitChapterContract '(?m)^## Relevant Promise Changes \(When Applicable\)\s*$' 'Cockpit Chapter Contract must keep promise changes conditional.'
Require-Match $cockpitChapterContract '(?m)^## Ending Contract \(When Applicable\)\s*$' 'Cockpit Chapter Contract must include the conditional ending contract.'
Require-Match $cockpitChapterContract '(?i)use `None`.*do not invent' 'Cockpit Chapter Contract must permit no relevant promise change.'
Require-Match $cockpitChapterContract '(?m)^## Required Clue / Reveal / Setup\s*$' 'Cockpit Chapter Contract must include clue, reveal, setup, and payoff fields.'
Require-Match $projectLayout '(?i)read the Project Brief before the Story Bible' 'Project layout must load the Project Brief before the Story Bible.'
Reject-Match $conflictPressure '(?i)use at least one active pressure per scene' 'Conflict Pressure must not manufacture active pressure in every scene.'
Require-Match $conflictPressure '(?i)meaningful movement|changed interpretation|meaningful consequence' 'Conflict Pressure must allow meaningful movement or consequence without manufactured tension.'
Require-Match $outlineGate '(?i)Standard and Longform.*explicit.*approval' 'Outline Gate introduction must scope explicit approval to Standard and Longform.'
Require-Match $cockpit '(?i)applicable state-changing longform drafting or revision' 'Cockpit memory patches must cover applicable drafting and revision.'
Require-Match $rootSkill 'skills/sheep-story/references/conflict-pressure\.md' 'Root routing must use a complete path for conflict pressure.'
Require-Match $rootSkill 'skills/sheep-story/references/story-architecture\.md' 'Root routing must use a complete path for story architecture.'
Require-Match $rootSkill 'skills/sheep-story/references/opposition-design\.md' 'Root routing must use a complete path for opposition design.'
Require-Match $rootSkill 'skills/sheep-story/references/story-project-layout\.md' 'Root routing must use a complete path for project layout.'
Require-Match $skillReadme '(?i)For standard and longform original prose.*discussion outline.*explicit approval' 'Skill README must keep Quick direct execution while gating Standard and Longform.'
Require-Match $fictionDesign '(?i)Quick mode.*approved brief' 'Design workflow must document the Quick approved-brief exception.'
Reject-Match $fictionDesign '(?i)If a beat has no desire, obstacle, cost, or turn, mark it as weak' 'Design must not mark a beat weak when it has a valid dramatic function.'
Require-Match $fictionDesign '(?i)beats? are weak only when.*clear dramatic function' 'Design weak-beat guidance must accept a declared dramatic function.'
Require-Match $fictionDesign '(?i)Anti-AI.*(?:explicitly requested|symptoms)' 'Design must make anti-AI cleanup conditional.'
Reject-Match $fictionDesign '(?i)automatically run an anti-AI-flavour pass' 'Design must not make anti-AI cleanup universally automatic.'
Reject-Match $presentationPlan '(?i)plugins\\cache\\codex-game-studios-local' 'Presentation plan must not maintain source from mutable installed cache.'
Require-Match $webuiDesign '(?i)Standard chapters require an approved outline.*contract only when complexity warrants' 'WebUI rules must gate Standard by outline and conditionally use contracts.'
Require-Match $webuiDesign '(?i)characterStates' 'WebUI StoryState model must persist documented character states.'
Require-Match $quickModeTest '(?i)exactly 180 words|180 words.*tolerance' 'Quick-mode pass criteria must make the requested length measurable.'
Reject-Match $promiseTemplate '(?i)Clue, foreshadowing, vow, threat, question,' 'Promise Type must not duplicate separately tracked questions.'
$genericLeakPattern = '(?i)Taipei|台北|lost technology|失落科技|childhood[- ]friend|青梅竹馬'
Reject-Match ($skill + $architecture + $opposition + $projectBrief) $genericLeakPattern 'Generic architecture guidance must not contain example-specific city, technology, or relationship defaults.'

foreach ($fourActMutation in 'Four-act structure is not optional; it is mandatory.', 'Four-act structure must be used.', 'The story must follow four acts.') {
    if (($fourActMutation -match '(?i)four-act.*(?:optional|not mandatory)|(?:optional|not mandatory).*four-act') -and
        ($fourActMutation -notmatch $mandatoryFourActPattern)) {
        $failures.Add("Four-act assertions missed contradictory wording: $fourActMutation")
    } elseif (($fourActMutation -notmatch '(?i)optional|not mandatory') -and ($fourActMutation -notmatch $mandatoryFourActPattern)) {
        $failures.Add("Mandatory four-act assertion missed mutation: $fourActMutation")
    }
}
foreach ($mutation in 'climax every five thousand words', 'dialogue must be 40 percent', '70 percent of promises must pay off') {
    if ($mutation -notmatch $numericKpiPattern) {
        $failures.Add("Numeric KPI assertion missed mutation: $mutation")
    }
}
foreach ($mutation in 'Childhood-friend protagonists are the default.', '青梅竹馬是預設主角關係。') {
    if ($mutation -notmatch $genericLeakPattern) {
        $failures.Add("Genericity assertion missed mutation: $mutation")
    }
}

foreach ($test in 9..45) {
    $pattern = '{0:D2}-*.md' -f $test
    if (-not (Get-ChildItem -LiteralPath (Join-Path $ProjectRoot 'tests') -Filter $pattern -File)) {
        $failures.Add("Missing positive-control acceptance specification: $pattern")
    }
}

if ($failures.Count -gt 0) {
    $failures | ForEach-Object { "FAIL: $_" }
    exit 1
}

'SheepStory regression checks passed.'
