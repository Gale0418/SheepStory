# SheepStory Character and Story Engine Map

## Purpose

This document organizes the character-card research, character simulation layers, contrast mechanisms, misunderstanding engines, embodied performance, and reader-promise controls into one routing map.

It is an index and design rationale, not a requirement to fill every field for every character.

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
  +-- goal + pressure + relationship + activated memory + ToM lookahead
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
  +-- canon, persona, knowledge, emotion, relationship, space, tone, user agency
```

No scene needs every layer expanded. Use the smallest set that explains the behavior.

## Routing Table

| Need | Primary reference | Secondary reference |
|---|---|---|
| Design or audit an AI role-play card | `character-card-engineering.md` | `trait-expression-library.md`, `social-cognitive-profile.md` |
| Make an ordinary supporting character distinct | `trait-expression-library.md` | `voice-calibration.md` |
| Separate intelligence, observation, charisma, empathy, or tact | `social-cognitive-profile.md` | `genius-strategy.md` |
| Design gap appeal, hypocrisy, indirect affection, or words-actions conflict | `contrast-and-dissonance.md` | `embodied-expression.md`, `character-memory-belief.md` |
| Track appraisal, accumulated stress, defenses, or relationship evolution | `character-dynamics.md` | `story-memory-ops.md` |
| Track what each person knows, believes, remembers, or pretends | `character-memory-belief.md` | `continuity-check.md` |
| Build a tragedy or comedy from different beliefs | `misunderstanding-tragedy.md` | `character-dynamics.md`, `conflict-pressure.md` |
| Write expressions, gestures, breath, movement, and action beats | `embodied-expression.md` | `dialogue-checklist.md` |
| Establish emotional contract, tonal hazard, and ending range | `reader-promise-and-tone.md` | `story-architecture.md` |
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

Add:

- contradiction
- relationship-specific behavior
- failure-state continuity
- one or two embodied signatures
- relevant knowledge boundary

### Tier 3 — Psychological or Social Driver

Add only relevant axes from:

- social-cognitive profile
- appraisal and coping
- memory / belief
- contrast or mask dynamics
- relationship dimensions

### Tier 4 — Plot-Critical Mind

For detectives, masterminds, unreliable narrators, political operators, tragic pairs, and persistent antagonists, track evidence chains, belief updates, repair windows, deception, and post-failure strategies.

Detail budget follows narrative relevance and distinctiveness, not intelligence or status.

## Character Card Layer

Public AI-character ecosystems exposed several practical facts:

1. A first message teaches length, action density, relationship assumptions, and format.
2. Example dialogue teaches whatever it repeatedly demonstrates, including mistakes.
3. Permanent user-role assumptions can steal player agency.
4. Repeated absolute language can turn a temporary goal into an eternal law.
5. A complete-looking schema can still fail under refusal or changed state.
6. Concrete player reviews can become regression probes.

The engineering reference therefore treats a card as a prompt program rather than a biography form.

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
| Interaction robustness | Can the character survive refusal and changed state? |
| User agency | Can the player reject assumptions? |
| State updating | Does new evidence alter goals and beliefs? |
| Epistemic integrity | Does the character know only what they can know? |
| Failure-state continuity | Is there still a person after defeat? |
| Embodied efficiency | Do action beats carry meaning rather than twitch constantly? |
| Tonal fidelity | Does scene causality match the reader promise? |
| Token efficiency | Does permanent context change behavior? |

## High-Value Regression Probes

- user rejects romance
- user refuses task
- authority or ownership changes
- defining strategy fails
- character is moved outside the opening scenario
- character is asked about unknown information
- old emotional cue reappears
- two characters receive different evidence
- a public mask is exposed
- player attempts early clarification
- action contradicts spoken claim
- tone shifts from comedy to danger

## Organization Rule

Do not create a new module for every trope.

Add a new reference only when it introduces a distinct reasoning process:

- Trait Library: observable tendency
- Contrast: expectation and channel mismatch
- Social-Cognitive: capability
- Dynamics: state evolution
- Memory/Belief: epistemic boundaries
- Misunderstanding: divergent models and causal cascade
- Embodiment: physical performance
- Reader Promise: audience contract
- Card Engineering: prompt-field and player-evidence operations

## Principle

SheepStory should not merely remember who a character is. It should explain how a card initializes them, how a scene activates them, how their body expresses them, how other people misread them, how consequences update them, and what emotional contract the reader believes the story will honor.