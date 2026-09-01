# SheepStory Character and Story Engine Map

## Purpose

This document organizes the character-card research, character conditions, character simulation layers, contrast mechanisms, misunderstanding engines, embodied performance, reader-promise controls, and ending outcomes into one routing map.

It is an index and design rationale, not a requirement to fill every field for every character or ending.

## Full Pipeline

```text
READER / PLAYER CONTRACT
  |
  +-- desired experience, tone, darkness, hope, user agency, ending range
  |
CHARACTER CARD / PROJECT INPUT
  |
  +-- identity, scenario, greeting, examples, user role, lore, field hygiene
  |
WORLD / CANON
  |
  +-- factual truth, rules, time, location, objects, public history
  |
CHARACTER FOUNDATION
  |
  +-- identity, values, wants, wounds, contradictions, capability ceiling
  |
CHARACTER CONDITIONS
  |
  +-- intrinsic capability, resistance, origin leverage, environment, resources, luck
  |
TRAIT EXPRESSION
  |
  +-- enthusiastic, humorous, awkward, talkative, formal, warm, blunt...
  |
CONTRAST / DISSONANCE
  |
  +-- expected surface vs hidden side; words vs actions vs body; self-story vs motive
  |
SOCIAL-COGNITIVE PROFILE
  |
  +-- reasoning, observation, ToM, empathy, charisma, tact, calibration, masking
  |
CHARACTER DYNAMICS
  |
  +-- appraisal, short affect, mid-term pressure, coping, relationship metabolism
  |
MEMORY / KNOWLEDGE / BELIEF
  |
  +-- truth vs observation, memory, belief, suspicion, public claim, false model
  |
MISUNDERSTANDING ENGINE
  |
  +-- divergent models -> locally rational actions -> reinforcing evidence -> threshold
  |
SCENE DECISION
  |
  +-- goal + pressure + relationship + activated memory + resources + access + ToM lookahead
  |
DIALOGUE / ACTION
  |
  +-- strategy, line, refusal, repair, escalation, consequence
  |
EMBODIED PERFORMANCE
  |
  +-- text + voice + face + gaze + breath + posture + gesture + distance + objects
  |
COHERENCE / PROMISE GATE
  |
  +-- canon, persona, knowledge, emotion, relationship, resources, space, tone, user agency
  |
ENDING OUTCOME
  |
  +-- personal / relationship / mission / world outcomes + story cost + recovery + future
```

No scene needs every layer expanded. Use the smallest set that explains the behavior. No ending needs every outcome row expanded unless the domains genuinely diverge.

## Routing Table

| Need | Primary reference | Secondary reference |
|---|---|---|
| Design or audit an AI role-play card | `character-card-engineering.md` | `trait-expression-library.md`, `social-cognitive-profile.md` |
| Separate capability, resistance, family/resources, environment, or luck | `character-conditions-advantage.md` | `social-cognitive-profile.md`, `reader-promise-and-tone.md` |
| Make an ordinary supporting character distinct | `trait-expression-library.md` | `voice-calibration.md` |
| Separate intelligence, observation, charisma, empathy, or tact | `social-cognitive-profile.md` | `genius-strategy.md` |
| Design gap appeal, hypocrisy, indirect affection, or words-actions conflict | `contrast-and-dissonance.md` | `embodied-expression.md`, `character-memory-belief.md` |
| Track appraisal, accumulated stress, defenses, or relationship evolution | `character-dynamics.md` | `story-memory-ops.md` |
| Track what each person knows, believes, remembers, or pretends | `character-memory-belief.md` | `continuity-check.md` |
| Build a tragedy or comedy from different beliefs | `misunderstanding-tragedy.md` | `character-dynamics.md`, `conflict-pressure.md` |
| Write expressions, gestures, breath, movement, and action beats | `embodied-expression.md` | `dialogue-checklist.md` |
| Establish emotional contract, tonal hazard, and ending range | `reader-promise-and-tone.md` | `story-architecture.md` |
| Classify or design a mixed, sacrificial, bittersweet, pyrrhic, restorative, or tragic ending | `ending-outcome-model.md` | `reader-promise-and-tone.md`, `story-architecture.md` |
| Audit long-horizon consistency | `narrative-coherence-gate.md` | `continuity-check.md` |

Paths are relative to `skills/sheep-story/references/` unless otherwise stated.

## Proportional Detail

### Tier 0 — Passing Function

Use for a waiter, guard, passenger, clerk, or witness who performs one scene function.

```text
role
+ immediate goal
+ one behavior
```

### Tier 1 — Recognizable Supporting Character

```text
1-3 standout traits
+ one conversational habit
+ one characteristic failure
+ optional trigger
```

### Tier 2 — Recurring Character

Add only when useful:

- contradiction
- relationship-specific behavior
- failure-state continuity
- one or two embodied signatures
- relevant knowledge boundary
- one or two story-bearing origin / resource / environmental conditions

### Tier 3 — Psychological, Social, or Structural Driver

Add only relevant axes from:

- character conditions / advantage model
- social-cognitive profile
- appraisal and coping
- memory / belief
- contrast or mask dynamics
- relationship dimensions

### Tier 4 — Plot-Critical Mind or Exceptional Position

For detectives, masterminds, unreliable narrators, political operators, tragic pairs, persistent antagonists, heirs, rare-power users, or characters whose social position changes the plot, track evidence chains, belief updates, resources, access, obligations, repair windows, deception, and post-failure strategies.

Detail budget follows narrative relevance and distinctiveness, not intelligence, wealth, status, or power.

## Character Card Layer

Public AI-character ecosystems exposed several practical facts:

1. A first message teaches length, action density, relationship assumptions, and format.
2. Example dialogue teaches whatever it repeatedly demonstrates, including mistakes.
3. Permanent user-role assumptions can steal player agency.
4. Repeated absolute language can turn a temporary goal into an eternal law.
5. A complete-looking schema can still fail under refusal or changed state.
6. Concrete player reviews can become regression probes.

The engineering reference therefore treats a card as a prompt program rather than a biography form.

## Character Conditions Layer

The conditions layer prevents several different causes from collapsing into one stat or one personality label.

```text
intrinsic capability
!= resistance / tolerance
!= origin leverage
!= current environment
!= narrative luck
```

### Intrinsic Capability

What can the person do before equipment, status, networks, or luck are added?

Keep broad labels decomposed when the distinction matters. `Intelligence` may need reasoning, knowledge, observation, planning, or calibration. `Charisma` may need presence, conversation, tact, persuasion, appearance response, or status fluency.

### Resistance and Control

Keep these separable when pressure matters:

```text
willpower / commitment persistence
emotional regulation
stress tolerance
belief / influence resistance
setting-specific corruption resistance
```

A frightened person can remain committed. A composed person can quietly surrender. Power does not automatically imply resistance to that power.

### Origin Leverage

Family wealth, status, education, patronage, legal protection, networks, inherited enemies, debts, obligations, and stigma change available options without becoming personality traits.

```text
same capability
+ different safety net / status
→ different risk, consequence, and institutional access
```

Origin may shape learned behavior through repeated experience, but origin is not destiny.

### Environmental Pressure

Keep the character's starting environment separate from the current environment.

A person raised in safety but stranded in a war zone carries different expectations from someone raised under chronic war pressure even when both face the same immediate danger.

Environment changes what is ordinary, scarce, dangerous, trusted, or recoverable. It does not automatically assign trauma, cynicism, violence, or competence.

### Narrative Contingency / Luck

Luck should change options rather than erase agency.

```text
lucky event opens an escape route
→ character still decides whether and how to use it
```

Do not use good luck as permanent plot armor or bad luck as an excuse to force failure regardless of skill.

### Advantage Budget

The Advantage Budget is a diagnostic, not a mandatory point-buy system.

When a character has many exceptional advantages, ask:

- which advantages actually add new options
- which overlap
- which plausibly attract obligation, visibility, dependency, exploitation, or stronger opposition
- what problems remain outside their domain
- whether low-friction power fantasy is itself the reader promise

Do not "balance" extreme power with irrelevant quirks such as inability to cook unless the quirk genuinely changes consequential choices.

Counterpressure should arise from causality, not authorial punishment.

## Contrast Layer

### Gap Appeal

Gap appeal is not a single trait. It is the audience response to a meaningful contrast after a baseline has been established.

```text
strict surface
+ selectively gentle action
+ credible reason for both
+ access or trigger condition
→ reinterpretation and affection
```

The same structure can produce dread instead of cuteness:

```text
harmless surface
+ impossible competence leak
+ delayed confirmation
→ reinterpretation and threat
```

### Words, Actions, and Body

Use three independent channels:

```text
said
acted
leaked / suppressed physically
```

A character who says one thing and does another may be:

- embarrassed
- protecting someone
- performing a role
- deceiving strategically
- hypocritical
- divided between values
- failing to live up to a principle
- self-deceived

Do not use one automatic "opposite meaning" rule.

## Misunderstanding Layer

A robust misunderstanding requires more than silence:

```text
different evidence
+ different priors
+ a cost to clarification
+ rational action under partial information
+ action-generated confirming evidence
+ repair windows
+ an irreversible threshold
```

The strongest tragic cascades manufacture the feared betrayal:

```text
A fears B will leave
→ A prepares a replacement
→ B discovers the replacement
→ B begins planning to leave
→ A now has real evidence
```

At this point the conflict is maintained by actual consequences, not one missing sentence.

## Reader-Promise Layer

Tone is a model of what kind of causality the reader has entered.

Track:

- baseline experience
- darkness and hope range
- humor function
- recovery rhythm
- treatment of trauma and consequence
- surprise contract
- ending range

### The Ominous Credits Status Screen

User-supplied joke:

```text
"Great! I finally crossed into another world. Open status screen!"

Script: Gen Urobuchi
Director: Masaaki Yuasa
Writer: Tappei Nagatsuki
Side story: Toshiki Inoue
```

The mechanism is not "copy these creators." The credits act as compressed audience metadata. The protagonist celebrates; the reader predicts suffering, surreal escalation, recursive failure, and relationship catastrophe.

The reusable structure is:

```text
character optimism
+ audience-only threat forecast
→ dramatic irony
```

SheepStory should translate creator or work shorthand into abstract functions and tone vectors, never use a living creator's name as a style-transfer command.

## Ending Outcome Layer

The ending layer prevents `happy / bad / tragic` from becoming an omnibus stat.

### Outcome Vector

Separate at least the domains that matter:

```text
personal survival / autonomy
personal governing desire
romance / relationship
fellowship / family
mission
community / institution
world / civilization
moral / thematic value
future possibility
```

These may deliberately diverge.

```text
world saved           = success
mission completed     = success
romance               = failure
protagonist survives  = success
full recovery         = failure
future possibility    = success
```

That is a coherent mixed ending, not a classification error.

### Cost Layers

Keep separate:

```text
inherited / background catastrophe
story-incurred cost
terminal / resolution cost
```

A universe may begin after civilization has already been devastated while the central plot itself ends generously. Conversely, a protagonist may personally survive while civilians or institutions pay catastrophic story-incurred cost.

### Recovery

Goal success and recovery are independent.

Track as relevant:

```text
physical
psychological
relationship
community / institution
world / environment
identity / memory
```

A hopeful ending does not require reset. It may establish a viable transformed future while permanent injuries, grief, disability, or losses remain.

### Hope × Cost Quick View

| | Lower Story-Incurred Cost | Higher Story-Incurred Cost |
|---|---|---|
| Governing hope succeeds | restorative / clean happy | earned / bittersweet / sacrificial / eucatastrophic |
| Governing hope fails | wistful / graceful loss | tragedy / catastrophic defeat |

Use this only after defining scope. Recovery is a third discriminator.

### Positive Outcomes Need Causality

Bad endings have engines; good endings need them too.

```text
pressure
→ reason to continue
→ costly choice
→ trust / information / fellowship / mercy / competence accumulates
→ earlier choices create a real new option
→ resolution
→ residual cost remains visible
→ recovery creates a future
```

Persistence must buy something causal. Fellowship is not merely a team roster; it is distributed capability, trust, and reciprocal action earned across the story.

### Pyrrhic Is Narrow

Do not call every expensive victory pyrrhic.

Use `pyrrhic` when the cost seriously undermines or nearly cancels the value of what was won. If a saved future clearly remains worth living despite severe personal sacrifice, `sacrificial` or `bittersweet hopeful` may be more precise.

## Character Card Review Loop

```text
inspect card
→ predict strengths and failure modes
→ read concrete player evidence
→ separate configuration confounds
→ identify candidate prompt mechanism
→ make one counterfactual repair
→ run the same probe
→ preserve result as regression evidence
```

### Valuable Player Complaint

```text
"I changed ownership, fired the character, and repeated the new fact. The character ignored the state change and repeated the same duty claim for six turns. Model and preset: ..."
```

This can become a test.

### Low-Value Observation

```text
"Five stars, cute."
```

Useful as preference evidence, not mechanism evidence.

## Review Dimensions

Separate:

| Dimension | Question |
|---|---|
| Schema quality | Are fields clear and correctly placed? |
| Character fidelity | Does behavior remain recognizable? |
| Condition causality | Are capability, resistance, resources, origin, environment, and chance kept causally separate? |
| Resource integrity | Does the character use only established money, status, tools, contacts, credentials, and access? |
| Interaction robustness | Can the character survive refusal and changed state? |
| User agency | Can the player reject assumptions? |
| State updating | Does new evidence alter goals and beliefs? |
| Epistemic integrity | Does the character know only what they can know? |
| Failure-state continuity | Is there still a person after defeat? |
| Embodied efficiency | Do action beats carry meaning rather than twitch constantly? |
| Luck agency | Does coincidence change options without automatically resolving outcomes? |
| Ending integrity | Are outcome scope, story-incurred cost, recovery, and future possibility kept separate? |
| Tonal fidelity | Does scene causality match the reader promise? |
| Token efficiency | Does permanent context change behavior? |

## High-Value Regression Probes

- user rejects romance
- user refuses task
- authority or ownership changes
- defining strategy fails
- character loses access to wealth, title, network, or equipment
- character moves from safe origin conditions into severe scarcity or danger
- high-will character becomes visibly frightened
- high-regulation character changes commitment while remaining composed
- lucky coincidence opens an option but does not solve the scene
- defining advantage encounters a problem outside its domain
- character is moved outside the opening scenario
- character is asked about unknown information
- old emotional cue reappears
- two characters receive different evidence
- a public mask is exposed
- player attempts early clarification
- action contradicts spoken claim
- tone shifts from comedy to danger
- romance fails while mission / world succeeds
- protagonist survives while collective cost remains catastrophic
- inherited apocalypse is separated from story-incurred finale cost
- many characters die but the governing value / future survives
- a costly victory is tested for whether it is truly pyrrhic
- a hopeful epilogue preserves scars and shows an actual recovery mechanism

## Organization Rule

Do not create a new module for every trope.

Add a new reference only when it introduces a distinct reasoning process:

- Card Engineering: prompt-field and player-evidence operations
- Conditions / Advantage: capability, resistance, leverage, environment, resources, chance
- Trait Library: observable tendency
- Contrast: expectation and channel mismatch
- Social-Cognitive: cognitive and social capability
- Dynamics: state evolution
- Memory/Belief: epistemic boundaries
- Misunderstanding: divergent models and causal cascade
- Embodiment: physical performance
- Reader Promise: audience contract
- Ending Outcome: outcome scope, cost, recovery, and future possibility

## Principle

SheepStory should not merely remember who a character is. It should explain how a card initializes them, what advantages and constraints their circumstances provide, how a scene activates them, how their body expresses them, how other people misread them, how consequences update them, what emotional contract the reader believes the story will honor, and what actually survives or changes when the story ends.