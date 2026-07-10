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

foreach ($test in 9..26) {
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
