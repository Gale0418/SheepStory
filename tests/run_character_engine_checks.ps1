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
$conditions = Read-RequiredText 'skills/sheep-story/references/character-conditions-advantage.md'
$contrast = Read-RequiredText 'skills/sheep-story/references/contrast-and-dissonance.md'
$misunderstanding = Read-RequiredText 'skills/sheep-story/references/misunderstanding-tragedy.md'
$tone = Read-RequiredText 'skills/sheep-story/references/reader-promise-and-tone.md'
$ending = Read-RequiredText 'skills/sheep-story/references/ending-outcome-model.md'
$dialogue = Read-RequiredText 'skills/sheep-story/references/dialogue-checklist.md'
$memory = Read-RequiredText 'skills/sheep-story/references/story-memory-ops.md'
$foundation = Read-RequiredText 'skills/sheep-story/references/story-foundation.md'
$characterTemplate = Read-RequiredText 'templates/story-project/characters/_template.md'
$conditionsTemplate = Read-RequiredText 'templates/story-project/characters/_conditions-template.md'
$conditionsSpec = Read-RequiredText 'tests/50-character-conditions-advantage.md'
$conditionsPrompt = Get-MarkdownSection $conditionsSpec 'Prompt'
$conditionsExpected = Get-MarkdownSection $conditionsSpec 'Expected Good Behavior'
$conditionsBad = Get-MarkdownSection $conditionsSpec 'Bad Behavior To Reject'
$conditionsPass = Get-MarkdownSection $conditionsSpec 'Pass Criteria'
$originConditions = Get-MarkdownSection $conditions '3. Origin Leverage'
$mutableConditions = Get-MarkdownSection $conditions '4. Mutable Resources, Status, and Institutional Access'
$originTemplate = Get-MarkdownSection $conditionsTemplate 'Origin Leverage'
$mutableTemplate = Get-MarkdownSection $conditionsTemplate 'Mutable Resources / Status / Access'
$projectBrief = Read-RequiredText 'templates/story-project/project-brief.md'
$continuityState = Read-RequiredText 'templates/story-project/continuity/state.md'
$cardAudit = Read-RequiredText 'templates/cockpit/character-card-audit.md'
$misunderstandingLedger = Read-RequiredText 'templates/cockpit/misunderstanding-ledger.md'
$readerPromiseTemplate = Read-RequiredText 'templates/cockpit/reader-promise.md'
$endingTemplate = Read-RequiredText 'templates/cockpit/ending-outcome-contract.md'
$researchMethod = Read-RequiredText 'docs/character-card-research-method.md'
$endingCases = Read-RequiredText 'docs/ending-outcome-case-map.md'
$systemMap = Read-RequiredText 'docs/character-story-engine-map.md'

foreach ($path in @(
    'references/character-card-engineering.md',
    'references/character-conditions-advantage.md',
    'references/contrast-and-dissonance.md',
    'references/misunderstanding-tragedy.md',
    'references/reader-promise-and-tone.md',
    'references/ending-outcome-model.md'
)) {
    Require-Match $skill ([regex]::Escape($path)) "Canonical skill must route $path"
}

foreach ($path in @(
    'skills/sheep-story/references/character-card-engineering.md',
    'skills/sheep-story/references/character-conditions-advantage.md',
    'skills/sheep-story/references/contrast-and-dissonance.md',
    'skills/sheep-story/references/misunderstanding-tragedy.md',
    'skills/sheep-story/references/reader-promise-and-tone.md',
    'skills/sheep-story/references/ending-outcome-model.md'
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

Require-Match $conditions '(?i)Intrinsic Capability' 'Character-conditions guidance must separate intrinsic capability.'
Require-Match $conditions '(?i)Resistance, Tolerance, and Control' 'Character-conditions guidance must separate resistance and control.'
Require-Match $conditions '(?i)Origin Leverage' 'Character-conditions guidance must model origin leverage.'
Require-Match $conditions '(?is)Separate at least these six families.*1\. Intrinsic capability.*2\. Resistance / tolerance.*3\. Origin leverage.*4\. Mutable resources / status / institutional access.*5\. Environmental pressure.*6\. Narrative contingency' 'Character-conditions guidance must enumerate all six independent condition families in order.'
Require-Match $conditions '(?is)## 3\. Origin Leverage.*## 4\. Mutable Resources, Status, and Institutional Access.*## 5\. Environmental Pressure.*## 6\. Narrative Contingency / Luck' 'Character-conditions guidance must keep mutable resources/status/access as a distinct layer between origin and environment.'
Require-Match $originConditions '(?is)historical or inherited leverage.*not a ledger.*use right now' 'Origin leverage must remain a durable/history layer rather than current usable inventory.'
Reject-Match $originConditions '(?im)^\s*-\s+(money or material reserves currently usable|equipment.*currently controlled|staff.*currently callable|current legal or political office|credentials, licenses, clearances|institutional or location access|resources, authority, or access that are frozen)' 'Origin leverage must not duplicate fields that belong to mutable current state.'
Require-Match $mutableConditions '(?is)money or material reserves currently usable.*equipment.*currently controlled.*staff.*currently callable.*current legal or political office.*credentials.*institutional or location access' 'Mutable resource guidance must itself contain current money, equipment, network, status, credentials, and access fields.'
Require-Match $mutableConditions '(?is)frozen, revoked, exhausted.*destroyed.*unavailable' 'Mutable resource guidance must represent lost or unavailable leverage explicitly.'
Require-Match $conditions '(?i)Origin Is Not Current State' 'Character-conditions guidance must explicitly distinguish durable origin from mutable current state.'
Require-Match $mutableConditions '(?is)### Current-State Source of Truth.*continuity/state\.md.*authoritative current-state ledger' 'Character-conditions guidance must keep its explicit continuity source-of-truth rule inside the mutable layer.'
Require-Match $conditions '(?i)Origin-State Collapse' 'Character-conditions guidance must reject conflating origin with current mutable leverage.'
Require-Match $conditions '(?i)State Resurrection' 'Character-conditions guidance must reject restoring lost leverage from durable origin.'
Reject-Match $conditions '(?i)Separate at least these five families' 'Character-conditions guidance must not retain the obsolete five-family model.'
Require-Match $conditions '(?i)Environmental Pressure' 'Character-conditions guidance must model environmental pressure.'
Require-Match $conditions '(?i)Narrative Contingency / Luck' 'Character-conditions guidance must model luck separately from capability.'
Require-Match $conditions '(?i)Willpower Is Not Emotional Regulation' 'Character-conditions guidance must separate willpower from emotional regulation.'
Require-Match $conditions '(?i)Luck Must Not Become Plot Armor' 'Character-conditions guidance must reject luck as plot armor.'
Require-Match $conditions '(?i)Advantage Budget' 'Character-conditions guidance must define an advantage budget diagnostic.'
Require-Match $conditions '(?i)Do Not Force Artificial Weaknesses' 'Character-conditions guidance must reject cosmetic balancing flaws.'
Require-Match $conditions '(?i)Power Fantasy Exception' 'Character-conditions guidance must preserve intentional power fantasy.'
Require-Match $conditions '(?i)Origin Does Not Equal Destiny' 'Character-conditions guidance must reject deterministic origin stereotypes.'
Require-Match $conditionsTemplate '(?i)Willpower / commitment persistence' 'Conditions template must preserve willpower separately.'
Require-Match $originTemplate '(?i)inherited or starting leverage.*current usable inventory' 'Conditions template must define origin as inherited/starting leverage rather than current inventory.'
Reject-Match $originTemplate '(?im)^\s*-\s+(Money / material resources currently usable|Equipment / assets currently controlled|Staff / allies / network currently callable|Current legal / political rank or status|Credentials / licenses / clearance / delegated authority|Institutional / location access|Frozen / revoked / exhausted / unavailable)' 'Conditions template origin section must not duplicate mutable current-state fields.'
Require-Match $conditionsTemplate '(?is)## Origin Leverage.*## Mutable Resources / Status / Access.*## Environmental Pressure' 'Conditions template must keep mutable resources/status/access in its own section between origin and environment.'
Require-Match $mutableTemplate '(?is)Money / material resources currently usable.*Equipment / assets currently controlled.*Staff / allies / network currently callable.*Current legal / political rank or status.*Credentials / licenses / clearance / delegated authority.*Institutional / location access.*Frozen / revoked / exhausted / unavailable' 'Conditions template mutable section must expose the complete current-state resource/status/access shape.'
Require-Match $mutableTemplate '(?is)continuity/state\.md.*authoritative after mutable state changes' 'Conditions template must keep its continuity source-of-truth rule inside the mutable section.'
Require-Match $conditionsTemplate '(?i)Starting environment' 'Conditions template must separate starting environment.'
Require-Match $conditionsTemplate '(?i)Narrative Contingency' 'Conditions template must support optional luck/fate mechanics.'
Require-Match $conditionsTemplate '(?i)Advantage Audit' 'Conditions template must include an advantage audit.'
Require-Match $conditionsTemplate '(?i)Disadvantage Audit' 'Conditions template must include a disadvantage audit.'
Require-Match $conditionsPrompt '(?i)accounts are frozen.*political office is revoked.*credentials are revoked' 'Test 50 prompt must exercise loss of mutable money, status, and credentials while origin remains durable.'
Require-Match $conditionsPrompt '(?i)field research budget.*engineering kit.*lab pass' 'Test 50 prompt must exercise later gains that were not inherited at origin.'
Require-Match $conditionsExpected '(?i)continuity/state\.md.*authoritative' 'Test 50 expected behavior must make continuity state authoritative for current mutable leverage.'
Require-Match $conditionsBad '(?i)later field budget.*inherited origin leverage' 'Test 50 must reject rewriting later mutable gains into origin.'
Require-Match $conditionsPass '(?i)both directions of mutation.*losses.*later gains' 'Test 50 pass criteria must pin both loss and gain directions.'

Require-Match $contrast '(?i)Gap appeal.*audience response|audience response.*Gap appeal' 'Contrast guidance must distinguish gap appeal from a standalone trait.'
Require-Match $contrast '(?is)What the character says.*What they do.*body' 'Contrast guidance must separate words, actions, and body.'
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
Require-Match $tone 'ending-outcome-model\.md' 'Tone guidance must route complex finales to the ending-outcome model.'

Require-Match $ending '(?i)Outcome Vector' 'Ending guidance must define a multidimensional outcome vector.'
Require-Match $ending '(?i)Inherited / Background Cost' 'Ending guidance must separate inherited/background cost.'
Require-Match $ending '(?i)Story-Incurred Cost' 'Ending guidance must separate story-incurred cost.'
Require-Match $ending '(?i)Recovery / Restoration' 'Ending guidance must model recovery independently from goal success.'
Require-Match $ending '(?i)Hope × Cost Quadrant|Hope x Cost Quadrant' 'Ending guidance must preserve the Hope-by-Cost quick view.'
Require-Match $ending '(?i)Relationship Outcome Is Its Own Axis' 'Ending guidance must not infer total failure from romance failure.'
Require-Match $ending '(?i)Hope and Recovery Engine' 'Ending guidance must require causal positive outcomes.'
Require-Match $ending '(?i)Pyrrhic Victory' 'Ending guidance must distinguish pyrrhic victory.'
Require-Match $ending '(?i)Background-Catastrophe Inflation' 'Ending guidance must reject charging inherited apocalypse to finale cost.'
Require-Match $ending '(?i)Multi-Part Outcome Movement' 'Ending guidance must support outcome movement across sequels or volumes.'
Require-Match $ending '(?i)Courage Is Independent of Ending Success' 'Ending guidance must separate courage from success.'

Require-Match $dialogue 'contrast-and-dissonance\.md' 'Dialogue guidance must route word-action contrast.'
Require-Match $dialogue 'misunderstanding-tragedy\.md' 'Dialogue guidance must route misunderstanding-driven exchanges.'
Require-Match $dialogue 'character-card-engineering\.md' 'Dialogue guidance must route card examples and greetings.'
Require-Match $memory '(?i)Active Misunderstandings|Misunderstanding State' 'Story memory must track active misunderstandings.'
Require-Match $memory '(?i)Reader-Promise / Tone State' 'Story memory must track durable tonal obligations.'
Require-Match $memory '(?i)Ending Cost vs Sequel Inherited State' 'Story memory must preserve prior-ending cost as sequel inherited state.'
Require-Match $memory '(?i)Major Outcome / Recovery State' 'Story memory must track resolved outcome domains and recovery.'
Require-Match $foundation '(?i)Reader Promise' 'Story foundation must include an optional reader promise.'
Require-Match $foundation '(?i)User / Player Role Contract' 'Story foundation must include a user/player role contract when relevant.'

Require-Match $characterTemplate '(?i)Optional Contrast / Dissonance' 'Character template must include optional contrast fields.'
Require-Match $characterTemplate '(?i)Failure-State Continuity' 'Character template must include failure-state continuity.'
Require-Match $projectBrief '(?i)Reader Experience / Core Promise' 'Project brief must record reader experience.'
Require-Match $projectBrief '(?i)Ending Outcome Contract' 'Project brief must record durable ending-outcome requirements.'
Require-Match $projectBrief '(?i)User / Player Role Contract' 'Project brief must record user-role assumptions.'
Require-Match $continuityState '(?i)Resource / Status / Access State' 'Continuity state must remain the dedicated mutable resource/status/access ledger.'
Require-Match $continuityState '(?i)Track mutable leverage separately from intrinsic capability and permanent origin' 'Continuity state must keep mutable leverage separate from intrinsic capability and origin.'
Require-Match $continuityState '(?i)Active Misunderstandings' 'Continuity state must track active misunderstandings.'
Require-Match $continuityState '(?i)Reader-Promise / Tone State' 'Continuity state must track durable tone state.'
Require-Match $continuityState '(?i)Major Outcome / Recovery State' 'Continuity state must carry major ending outcomes into later arcs.'
Require-Match $cardAudit '(?i)Prompt-to-Behavior Attribution' 'Card audit template must support prompt-to-behavior attribution.'
Require-Match $misunderstandingLedger '(?i)Repair Windows' 'Misunderstanding ledger must track repair windows.'
Require-Match $readerPromiseTemplate '(?i)Tonal Hazard Stack' 'Reader-promise template must track tonal hazards.'
Require-Match $readerPromiseTemplate '(?i)Ending Outcome Range' 'Reader-promise template must expose ending outcome ranges.'
Require-Match $endingTemplate '(?i)Outcome Vector' 'Ending-outcome template must track outcome domains.'
Require-Match $endingTemplate '(?i)Inherited / Background Cost' 'Ending-outcome template must separate inherited cost.'
Require-Match $endingTemplate '(?i)Story-Incurred Cost' 'Ending-outcome template must track story-incurred cost.'
Require-Match $endingTemplate '(?i)Recovery / Restoration' 'Ending-outcome template must track recovery.'
Require-Match $endingTemplate '(?i)Causal Hope Engine' 'Ending-outcome template must track the causal source of positive outcomes.'
Require-Match $researchMethod '(?i)configuration confounds' 'Research method must document configuration confounds.'
Require-Match $endingCases '(?i)Aldnoah\.Zero' 'Ending case map must include Aldnoah.Zero.'
Require-Match $endingCases '(?i)Muv-Luv Alternative' 'Ending case map must include Muv-Luv Alternative.'
Require-Match $endingCases '(?i)Knights of Sidonia' 'Ending case map must include Knights of Sidonia.'
Require-Match $endingCases '(?i)Guilty Crown' 'Ending case map must include Guilty Crown.'
Require-Match $endingCases '(?i)Gundam' 'Ending case map must include contrasting Gundam outcomes.'
Require-Match $systemMap '(?i)Full Pipeline' 'System map must organize the complete character/story pipeline.'
Require-Match $systemMap 'character-conditions-advantage\.md' 'System map must route the conditions and advantage layer.'
Require-Match $systemMap '(?i)ENDING OUTCOME' 'System map must include the ending-outcome layer.'

Reject-Match $contrast '(?i)"I hate you"\s*(always|=)\s*"I love you"' 'Contrast guidance must not endorse automatic opposite meaning.'
Reject-Match $tone '(?i)imitate the style of' 'Tone guidance must not instruct imitation of named creators.'
Reject-Match $conditions '(?i)extreme genius.*balancing flaw.*cannot cook' 'Conditions guidance must not endorse cosmetic fake balance.'
Reject-Match $ending '(?i)did not end up together.*therefore.*bad ending' 'Ending guidance must not treat romance failure as automatic total failure.'
Reject-Match $ending '(?i)many characters died.*therefore.*tragedy' 'Ending guidance must not treat body count as automatic tragedy.'

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
Test-BehaviorSpec 'tests/50-character-conditions-advantage.md' @(
    'wealth|political status',
    'frozen|revoked',
    'field research budget|engineering kit|lab pass',
    'mutable resources|status|institutional access',
    'continuity/state\.md|continuity state',
    'war-torn|scarcity',
    'willpower|emotional regulation',
    'luck|plot armor',
    'cannot cook|insects'
)
Test-BehaviorSpec 'tests/51-ending-outcome-model.md' @(
    'romance|couple',
    'inherited|background',
    'world|civilization|mission',
    'pyrrhic|sacrificial',
    'sequel|inherited state'
)

if ($failures.Count -gt 0) {
    throw ($failures -join [Environment]::NewLine)
}

'SheepStory character-engine checks passed.'