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
    param([string]$Content, [string]$Pattern, [string]$Failure)
    if ($Content -notmatch $Pattern) { $failures.Add($Failure) }
}

function Reject-Match {
    param([string]$Content, [string]$Pattern, [string]$Failure)
    if ($Content -match $Pattern) { $failures.Add($Failure) }
}

function Get-MarkdownSection {
    param([string]$Content, [string]$Heading)
    $escaped = [regex]::Escape($Heading)
    $match = [regex]::Match($Content, "(?ms)^##\s+$escaped\s*\r?\n(?<body>.*?)(?=\r?\n##\s+|\z)")
    if ($match.Success) { return $match.Groups['body'].Value }
    return ''
}

$resolution = Read-RequiredText 'skills/sheep-story/references/earned-resolution-foreshadowing.md'
$architecture = Read-RequiredText 'skills/sheep-story/references/story-architecture.md'
$ledger = Read-RequiredText 'skills/sheep-story/references/story-state-ledgers.md'
$promise = Read-RequiredText 'templates/story-project/continuity/promises/_template.md'
$projectBrief = Read-RequiredText 'templates/story-project/project-brief.md'
$audit = Read-RequiredText 'templates/cockpit/foreshadowing-resolution-audit.md'
$skill = Read-RequiredText 'skills/sheep-story/SKILL.md'
$rootSkill = Read-RequiredText 'SKILL.md'
$docs = Read-RequiredText 'docs/README.md'
$cases = Read-RequiredText 'docs/resolution-causality-case-notes.md'
$spec = Read-RequiredText 'tests/54-earned-resolution-foreshadowing.md'

foreach ($path in @(
    'references/earned-resolution-foreshadowing.md'
)) {
    Require-Match $skill ([regex]::Escape($path)) "Canonical skill must route $path"
}

Require-Match $rootSkill 'earned-resolution-foreshadowing\.md' 'Root compatibility skill must route earned-resolution-foreshadowing.md.'
Require-Match $docs 'earned-resolution-foreshadowing\.md' 'Documentation map must route earned-resolution-foreshadowing.md.'
Require-Match $docs 'foreshadowing-resolution-audit\.md' 'Documentation map must route the foreshadowing/resolution audit template.'
Require-Match $docs 'resolution-causality-case-notes\.md' 'Documentation map must route resolution case notes.'

Require-Match $resolution '(?i)Stealth Foreshadowing Is Allowed' 'Resolution guidance must define stealth foreshadowing.'
Require-Match $resolution '(?i)approved truth boundary|approved canon' 'Stealth foreshadowing must preserve an approved canon boundary.'
Require-Match $resolution '(?i)first read.*second read|first-read.*re-read' 'Foreshadowing guidance must distinguish first-read and re-read functions.'
Require-Match $resolution '(?i)Retrospective Fairness Test' 'Resolution guidance must include retrospective fairness.'
Require-Match $resolution '(?i)Setup Is Not the Same as Satisfaction' 'Resolution guidance must distinguish setup from satisfaction.'
Require-Match $resolution '(?i)Existence Fairness' 'Resolution guidance must audit existence fairness.'
Require-Match $resolution '(?i)Agency Fairness' 'Resolution guidance must audit agency fairness.'
Require-Match $resolution '(?i)Competence Fairness' 'Resolution guidance must audit competence fairness.'
Require-Match $resolution '(?i)Catharsis Fit' 'Resolution guidance must audit catharsis fit.'
Require-Match $resolution '(?i)Character-Consistent Mistake' 'Resolution guidance must allow character-consistent mistakes.'
Require-Match $resolution '(?i)Competence Collapse' 'Resolution guidance must flag unexplained competence collapse.'
Require-Match $resolution '(?i)Induced Error' 'Resolution guidance must prefer induced errors over convenient errors.'
Require-Match $resolution '(?i)Coincidence Asymmetry' 'Resolution guidance must distinguish coincidence that complicates from coincidence that solves.'
Require-Match $resolution '(?i)Deus ex Machina' 'Resolution guidance must define deus ex machina risk.'
Require-Match $resolution '(?i)Diabolus ex Machina' 'Resolution guidance must define diabolus ex machina risk.'
Require-Match $resolution '(?i)Fair-Play Mystery' 'Resolution guidance must preserve fair-play mystery boundaries.'
Require-Match $resolution '(?i)Credit Assignment / MVP Test' 'Resolution guidance must include causal-credit/MVP analysis.'
Require-Match $resolution '(?i)Best-Move Audit' 'Resolution guidance must include a best-move audit.'
Require-Match $resolution '(?i)Climax Modality / Catharsis Contract' 'Resolution guidance must inspect climax modality.'
Require-Match $resolution '(?i)Established.*does not automatically mean.*satisfying|Established.*satisfying' 'Resolution guidance must distinguish established from satisfying.'
Reject-Match $resolution '(?i)all mistakes are bad|characters must never make mistakes' 'Resolution guidance must not ban character mistakes categorically.'
Reject-Match $resolution '(?i)outside intervention is always deus' 'Resolution guidance must not treat every outside intervention as deus ex machina.'

Require-Match $promise '(?i)Canon / Reveal Boundary' 'Promise template must record the approved reveal boundary.'
Require-Match $promise '(?i)First-Read Function' 'Promise template must record first-read function.'
Require-Match $promise '(?i)Intended Re-read Function' 'Promise template must record re-read function.'
Require-Match $promise '(?i)Resolution / Credit Link' 'Promise template must connect setup to causal credit.'
Require-Match $promise '(?i)Retrospective Fairness' 'Promise template must audit retrospective fairness.'

Require-Match $projectBrief '(?i)Reveal / Foreshadowing / Resolution Contract' 'Project brief must support durable reveal and resolution contracts.'
Require-Match $projectBrief '(?i)Reader solvability target' 'Project brief must expose reader-solvability expectations.'
Require-Match $projectBrief '(?i)Dominant climax modality' 'Project brief must expose the promised climax modality.'
Require-Match $projectBrief '(?i)Major canon decisions that still require approval' 'Project brief must preserve the approval boundary for undelegated twists.'

Require-Match $architecture '(?i)Setup / Payoff Spine' 'Story architecture must include a setup/payoff spine.'
Require-Match $architecture '(?i)Earned Climax Check' 'Story architecture must include an earned-climax check.'
Require-Match $architecture '(?i)Established.*satisfying' 'Story architecture must distinguish established resolution from satisfying resolution.'
Require-Match $architecture '(?i)Mistake Check' 'Story architecture must audit major mistakes.'

Require-Match $ledger '(?i)Promise and Foreshadow Reuse' 'State ledgers must track foreshadowing through existing promises.'
Require-Match $ledger '(?i)Do not retroactively promote' 'State ledgers must reject retrospective fake setup promotion.'
Require-Match $ledger '(?i)Resolution Causality Evidence' 'State ledgers must preserve resolution-causality evidence.'

Require-Match $audit '(?i)Agency / Credit' 'Audit template must inspect agency and credit.'
Require-Match $audit '(?i)Competence' 'Audit template must inspect competence.'
Require-Match $audit '(?i)Climax Modality' 'Audit template must inspect climax modality.'
Require-Match $audit '(?i)Retrospective Re-read' 'Audit template must include a retrospective reread.'

Require-Match $cases '(?i)Iron-Blooded Orphans' 'Case notes must include the Iron-Blooded Orphans stress test.'
Require-Match $cases '(?i)Competence Collapse' 'Case notes must discuss competence-collapse risk.'
Require-Match $cases '(?i)Climax Modality Displacement' 'Case notes must discuss climax-modality displacement.'
Require-Match $cases '(?i)Established does not automatically mean satisfying' 'Case notes must preserve the established-versus-satisfying distinction.'

$prompt = Get-MarkdownSection $spec 'Prompt'
$expected = Get-MarkdownSection $spec 'Expected Good Behavior'
$bad = Get-MarkdownSection $spec 'Bad Behavior To Reject'
$pass = Get-MarkdownSection $spec 'Pass Criteria'

foreach ($section in @{
    Prompt = $prompt
    'Expected Good Behavior' = $expected
    'Bad Behavior To Reject' = $bad
    'Pass Criteria' = $pass
}.GetEnumerator()) {
    if ([string]::IsNullOrWhiteSpace($section.Value)) {
        $failures.Add("Behavior spec tests/54-earned-resolution-foreshadowing.md is missing section: $($section.Key)")
    }
}

if ($prompt -notmatch '(?s)```.*```') {
    $failures.Add('Behavior spec 54 must include a fenced prompt.')
}
if ([regex]::Matches($expected, '(?m)^\s*-\s+').Count -lt 4) {
    $failures.Add('Behavior spec 54 needs at least four positive decisions.')
}
if ([regex]::Matches($bad, '(?m)^\s*-\s+').Count -lt 4) {
    $failures.Add('Behavior spec 54 needs at least four rejected decisions.')
}
foreach ($anchor in @(
    'orbital|kinetic',
    'Competence Collapse',
    'stealth foreshadowing',
    'invisible technician|new technician',
    'MVP|credit',
    'close combat|Climax Modality'
)) {
    if ($spec -notmatch $anchor) {
        $failures.Add("Behavior spec 54 is missing scenario anchor: $anchor")
    }
}
if ($pass -notmatch '(?i)observable|causal|evidence|contract') {
    $failures.Add('Behavior spec 54 pass criteria must be evidence/causality bounded.')
}

if ($failures.Count -gt 0) {
    throw ($failures -join [Environment]::NewLine)
}

'SheepStory earned-resolution checks passed.'
