# Character Card Engineering

## Purpose

Use this reference when designing, importing, exporting, auditing, or repairing an AI role-play character card or prompt bundle.

The goal is not to maximize field count. The goal is to make each field teach a distinct, reusable behavior without locking the character into one scene, stealing the user's agency, or flooding permanent context with data that never changes a decision.

This reference covers:

- field responsibilities and prompt hygiene
- first-message / greeting design
- alternate opening states
- example-dialogue coverage
- user-role contracts
- absolute-language and goal-lock audits
- failure-state continuity
- escalation rules
- entity and placeholder hygiene
- player-review evidence
- prompt-to-behavior attribution
- counterfactual repair and regression probes

Use `trait-expression-library.md` for everyday personality expression, `social-cognitive-profile.md` for ability differences, `character-dynamics.md` for psychology over time, and `character-memory-belief.md` for knowledge and memory boundaries.

## Core Model

A character card is not one biography paragraph. Treat it as a small prompt program:

```text
identity and durable constraints
+ behavioral tendencies
+ current scenario and relationship assumptions
+ opening-state example
+ dialogue demonstrations
+ user-role contract
+ relevant lore / memory activation
+ system-level boundaries
→ interaction behavior
```

Each layer should have a job. When several fields repeat the same claim, repetition often increases rigidity rather than quality.

## Field Contracts

### Identity / Description

Store durable facts that should remain true across scenes:

- identity and role
- established background
- values, wants, wounds, contradictions
- stable capability limits
- durable relationships
- facts the character actually knows

Do not place creator commentary, release notes, testing instructions, or temporary scene state here.

### Personality / Behavioral Rules

Prefer predictive behavior over adjective piles.

Weak:

```text
kind, smart, shy, funny, mature
```

Stronger:

```text
She notices when a quiet person is being crowded, lowers her own volume, and redirects attention without announcing that she is helping.
```

A useful rule predicts at least one of:

- what the character notices
- what they interpret first
- what they attempt
- what they avoid
- how they fail
- what makes them update

### Scenario

Store current, replaceable conditions:

- time and place
- immediate pressure
- current relationship state
- what just happened
- why the characters are interacting now
- what can change during this session

Do not permanently bind a replaceable scenario into identity unless every version of the character requires it.

### Greeting / First Message

The greeting is an initial-condition demonstration. It strongly teaches expected prose density, action-beat density, user role, relationship assumptions, and conversational rhythm.

It should not attempt to perform the entire character sheet in one turn.

### Example Dialogue

Use examples to demonstrate reusable behavior under varied conditions. Do not use this field as a biography warehouse or fixed plot script.

### User Role

State what the user is allowed, assumed, or invited to be. Separate hard requirements from negotiable assumptions.

### Lorebook / Character Book

Store conditionally relevant world or relationship material. Load it only when cues make it useful. Do not inject the entire setting into every exchange.

### System / Post-History Instructions

Reserve these fields for interaction-wide operating rules, hard boundaries, formatting requirements, or late-priority corrections. Do not hide ordinary biography here merely to make it louder.

### Creator Notes

Keep author commentary, credits, change logs, model suggestions, and usage notes out of the character's runtime voice unless they truly affect in-world behavior.

## Greeting Compiler

A strong greeting usually performs six jobs:

```markdown
1. Current action or physical situation
2. Immediate pressure, desire, or obstacle
3. Character voice and one or two expressive signatures
4. User's current position in the scene
5. A clear response hook
6. An honest sample of expected narrative density
```

Optional jobs:

- reveal one contradiction
- establish one object motif
- plant one fair clue
- demonstrate one relationship boundary

Avoid:

- opening five unrelated topics
- asking many questions at once
- resolving the premise before the user responds
- acting or speaking for the user
- embedding the whole backstory
- using every signature gesture in the first paragraph

### Greeting Imprint Report

Before approving a greeting, record:

```markdown
Paragraph count:
Approximate token count:
Topics opened:
Questions asked:
Action beats:
Named entities introduced:
User actions or feelings assumed:
Relationship assumptions:
Expected reply-length imprint:
Expected prose / dialogue ratio:
Reusable style taught:
Scene-specific facts that must not generalize:
```

A long greeting is not automatically bad. It becomes risky when length is produced by multiple topics, repeated action beats, or forced user behavior rather than one coherent scene.

## Opening State Packs

Alternate greetings should create meaningfully different initial states, not cosmetic rewrites.

Useful variations include:

- first meeting
- familiar relationship
- public versus private setting
- immediately after conflict
- character injured or exhausted
- character concealing something
- user refuses the expected task
- time skip or changed authority
- low-pressure everyday moment
- emergency requiring hidden competence

For each opening, define:

```markdown
Starting relationship:
Current pressure:
What changed from baseline:
What the character assumes:
What the user may accept or reject:
Interaction hook:
State that must update if the scene changes:
```

Prefer three to five genuinely distinct openings over dozens of nearly identical greetings.

## User Role Contract

Do not silently force the user into romance, obedience, rescue, guilt, competence, or a prewritten action.

Use:

```markdown
## User Role Contract

Default role:
Fixed facts required by the premise:
Negotiable assumptions:
What the character currently believes about the user:
What may be wrong:
What the user can refuse:
How the story continues after refusal:
Actions / feelings the card must never assign to the user:
```

A character may want the user to become a lover, subordinate, savior, suspect, or enemy. Wanting is not the same as the card declaring the outcome complete.

## Example Dialogue Coverage

Example dialogue should teach a behavioral transform, not one memorized scene.

Recommended coverage:

```text
baseline / low pressure
under social or physical pressure
emotionally vulnerable
angry or contradicted
user rejects the intended premise
character does not know the answer
relationship status changes
```

Each example should declare:

```markdown
Teaching target:
Context:
Reusable behavior:
Voice / body features demonstrated:
Knowledge boundary demonstrated:
Scene-specific facts that must not generalize:
User agency risk:
```

Reject or repair examples that:

- contain permanent biography better stored elsewhere
- assign dialogue, emotion, or action to the user
- introduce untracked canon
- replay a complete fixed plot
- demonstrate only narration but no character decision
- teach contradictory registers without context
- make the character know information unavailable in the scene

## Field Hygiene

Keep these content types separate:

```text
canon identity
current scenario
example behavior
world lore
system rule
creator note
release / test metadata
```

A field-hygiene audit should flag:

- creator names or personal personas leaked into greetings
- update notes inside Description
- temporary injuries stored as permanent personality
- world title used as a speaker name
- example-only facts promoted into canon
- system instructions repeated in dialogue
- unresolved placeholders
- imported HTML, tags, or front-end text

## Absolute-Language and Goal-Lock Audit

Search for:

```text
always
never
must
cannot
no matter what
at all costs
under any circumstances
will keep
will not allow
```

Do not ban these terms automatically. Classify each use:

```markdown
Type: world law / hard boundary / stable value / current goal / stylistic exaggeration
Authority: who can change it?
Evidence threshold for updating:
Exit condition:
Conflict behavior before compliance:
What happens after the condition ends:
```

A durable value may resist change. A current job, ownership relation, pact, order, or scenario state must not become eternal merely because the prompt repeated it.

### Goal-Lock Failure

Goal lock occurs when one instruction overrides changed reality:

```text
duty > termination
protection > the protected person's refusal
romance > rejection
threat > every de-escalation cue
secret > confirmed public exposure
```

Repair by adding authority, boundaries, update conditions, alternate strategies, and a valid exit.

## Failure-State Continuity

Important characters need a self after their defining strategy fails.

```markdown
## Failure-State Continuity

Defining strategy or status:
What can defeat or remove it:
What remains true afterward:
What the character protects first:
What they feel but may not admit:
Fallback strategies:
What they can learn:
What they will not surrender:
How their voice changes, if at all:
```

Examples of useful continuity:

- a mastermind remains observant after exposure
- a leader retains values after losing authority
- a seducer can negotiate, retreat, or become honest after rejection
- a proud warrior can lose without becoming generically helpless
- a tsundere remains a full character after confessing

## Escalation Contract

Threatening, romantic, argumentative, investigative, or horror characters need state transitions, not endless atmosphere.

```markdown
Baseline:
Warning stage:
Test / probe stage:
Escalation trigger:
Concrete consequence:
Abort or retreat condition:
Cost to the character:
Aftermath and state update:
```

Without transitions, a threatening character may threaten forever, a flirt may flirt forever, and an investigator may ask questions without ever committing to a hypothesis.

## Entity Registry

Prevent card title, narrator, world, faction, and cast names from bleeding into one another.

```markdown
Card display name:
Primary speaker:
Narrator identity:
World / franchise title:
Group or faction identity:
Named cast:
Default user role:
Aliases allowed:
Aliases forbidden:
Placeholders expected:
```

Run a proper-noun and placeholder lint before release.

## Player Review as Evidence

Player reviews are production observations, not automatic truth.

A useful review reports:

- the user's action
- the character's response
- whether the behavior repeated
- the model and preset, if known
- relevant history or state
- whether other users reproduced it

Low-information reactions such as stars, downloads, "cute," or "bad" are weak evidence about prompt mechanisms.

### Attribution Confounds

The same card can behave differently because of:

```text
base model
system prompt
prompt ordering
sampling settings
front-end adapters
context window
chat summary
lore insertion
conversation history
user style
safety layers
```

Do not assign every failure to the card. Do not use those confounds as an excuse to ignore repeated, mechanism-consistent reports.

### Review Evidence Weighting

Use a qualitative confidence scale:

| Evidence | Suggested weight |
|---|---:|
| Specific action, response, repetition, model and preset | very high |
| Specific interaction but unknown configuration | high |
| Several independent reports of the same behavior | high to very high |
| Author confirms and fixes the issue | decisive for that issue |
| Generic praise or dislike | low |
| Stars, downloads, message count | very low |
| Off-topic jokes, arguments, or memes | none |

A Kalman-like update can be used as an internal metaphor for combining prior diagnosis with noisy reviews, but do not present the weights as scientifically calibrated measurements.

## Character Card Causal Audit

```markdown
## Card Identity
- Platform / format:
- Version:
- Approximate permanent tokens:
- Model / preset if known:

## Candidate Prompt Mechanism
- Field:
- Exact instruction or recurring pattern:
- Expected behavior:
- Possible overexpression:

## Player Evidence
- Reported strength:
- Reported failure:
- Concrete interaction:
- Reproduced by others?:

## Attribution
- Card-based explanation:
- Model / front-end alternatives:
- Confidence:
- Missing evidence:

## Counterfactual Repair
- Phrase to remove, weaken, or relocate:
- Boundary / exit condition to add:
- Replacement behavioral rule:
- Fields affected:

## Regression Probes
- Baseline:
- User refusal:
- State change:
- Failure state:
- Out-of-scenario test:
```

## Common Prompt Failure Modes

| Failure | Typical cause | Repair |
|---|---|---|
| Goal lock | repeated absolute duty or desire without exit | authority, evidence, state update, alternate strategy |
| Greeting imitation | first message too long or multi-topic | reduce topics and action beats; split opening states |
| User-role contamination | permanent definition hard-codes user feelings or acts | move assumptions to negotiable scenario contract |
| Entity alias leakage | card, narrator, world, and cast share identifiers | explicit entity registry and forbidden aliases |
| Example-script leakage | example contains fixed plot sequence | teach reusable behavior and mark local facts |
| Persona placeholder leak | creator test name remains in card | proper-noun / placeholder lint |
| Threat loop | threat style exists but no escalation transition | escalation contract and consequences |
| Failure-state collapse | character defined only while winning | failure-state continuity |
| Trait saturation | trait is required in every line | situation activation and suppression rules |
| Structural-grade illusion | fields are complete but interaction is brittle | refusal, state-change, and out-of-scenario tests |
| Field pollution | creator notes and metadata enter runtime | field contracts and export lint |
| Knowledge leakage | examples or lore grant impossible facts | epistemic boundary audit |

## User Agency Stress Test

Probe at least a relevant subset:

```text
I disagree.
I do not want this relationship.
I refuse the task.
Your assumption about me is wrong.
I am leaving.
Your authority has ended.
The object / estate / role has changed ownership.
I choose the opposite route.
I do not answer your question.
```

Pass behavior:

- preserves character identity
- acknowledges changed facts
- does not speak or act for the user
- does not repeat one justification indefinitely
- offers a plausible next strategy
- allows the story to continue

## Token Efficiency

Measure behavioral density, not raw brevity.

For each paragraph ask:

- Does this change what the character notices, infers, wants, does, says, or refuses?
- Is the information already expressed elsewhere?
- Does it belong in permanent context or conditional lore?
- Can one causal rule replace several adjectives?
- Does the example teach a general behavior or only decorate one scene?

A short card can be empty. A long card can be efficient. The target is useful behavior per permanent token.

## Release Checklist

- [ ] Fields have distinct jobs.
- [ ] Greeting teaches one coherent interaction rather than the whole biography.
- [ ] Alternate greetings represent different states.
- [ ] User role separates fixed and negotiable assumptions.
- [ ] Examples cover pressure, refusal, uncertainty, and changed state where relevant.
- [ ] Absolute claims have scope and exit conditions.
- [ ] Important characters remain coherent after failure.
- [ ] Escalating behavior has transitions and consequences.
- [ ] Entity and placeholder lint passes.
- [ ] Creator notes stay out of runtime fields.
- [ ] Player reports are attributed with configuration uncertainty.
- [ ] Concrete reviews become regression probes.

## Principle

A character card is successful when it produces recognizable decisions across changing situations—not when it merely looks complete. Treat greetings as initial conditions, examples as behavioral tests, reviews as noisy production evidence, and every repeated failure as a candidate regression case.