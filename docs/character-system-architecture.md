# SheepStory Character System Architecture

## Purpose

This document organizes SheepStory's character-facing references into one layered model. It is a map, not another mandatory checklist.

The design goal is proportional detail:

- ordinary supporting characters stay light
- distinctive conversational personalities use a trait layer
- socially or cognitively unusual characters expand into capability layers
- long-running characters gain dynamic state, memory, belief, relationship, and coherence tracking only when the story needs it

## Layer Stack

```text
WORLD / CANON
  |
  +-- factual truth, timeline, world rules, location, object state
  |
CHARACTER FOUNDATION
  |
  +-- identity, values, wants, wounds, contradictions, capability ceiling
  |
TRAIT EXPRESSION
  |
  +-- enthusiastic, humorous, deadpan, talkative, literal, warm, abrasive, formal...
  |
SOCIAL-COGNITIVE PROFILE
  |
  +-- reasoning, observation, ToM, charisma, empathy, tact, calibration, masking...
  |
CHARACTER DYNAMICS
  |
  +-- event appraisal, short affect, mid-term pressure, coping/defense, relationship metabolism
  |
MEMORY / KNOWLEDGE / BELIEF
  |
  +-- what happened vs what this person knows, remembers, believes, suspects, pretends
  |
SCENE DECISION
  |
  +-- goal + pressure + relationship + activated memory + ToM lookahead -> action / line
  |
PERFORMANCE
  |
  +-- text + voice + body / gaze / gesture / breath / distance / object interaction
  |
COHERENCE GATE
  |
  +-- persona, epistemic, emotional, relationship, spatial, timeline, text/voice/body alignment
```

No scene needs every layer expanded explicitly.

## Reference Routing

### `trait-expression-library.md`

Use for recognizable everyday conversational personality.

Default supporting-character budget:

```text
1-3 standout traits
+ one conversational habit
+ one characteristic failure
+ optional situation trigger
```

This is usually enough for an ordinary character.

### `social-cognitive-profile.md`

Use when *how well* a character thinks, observes, reads people, persuades, masks, or calibrates inference is dramatically important.

Keep intelligence, observation, charisma, empathy, tact, assertiveness, and ethics separate.

### `character-dynamics.md`

Use when an event should continue to matter psychologically.

Core chain:

```text
event -> appraisal -> emotion -> coping/action -> mid-term update -> relationship consequence
```

Distinguish long-term identity, mid-term psychological accumulation, and short-term affect.

### `character-memory-belief.md`

Use when past events or information boundaries matter.

Core separation:

```text
world truth != knowledge != belief != memory != current inference
```

Memory use follows:

```text
Anchoring -> Selecting -> Bounding -> Enacting
```

Use ToM lookahead selectively for high-value social decisions.

### `embodied-expression.md`

Use when action beats, facial expression, breathing, gaze, posture, gesture, vocal delivery, movement, distance, touch, or object interaction carry subtext or consequence.

Do not decorate every line. Add embodiment when it emphasizes, contradicts, leaks, conceals, regulates, paces, positions, affects others, or creates evidence.

### `vocal-impact.md`

Use for screams, cries, chants, repeated names, non-lexical sound, battle calls, unusual prosody, or vocal intensity where delivery itself carries the beat.

`embodied-expression.md` handles the wider body/performance layer; `vocal-impact.md` remains the specialist voice reference.

### `dialogue-checklist.md`

Use for intention, obstacle, subtext, turn-taking, social strategy, and speakable line construction.

Dialogue is the output surface; it should draw from the character layers rather than replace them.

### `narrative-coherence-gate.md`

Use for long-horizon or complex review.

Checks:

- identity / persona coherence
- knowledge leakage
- emotional and relationship continuity
- Role-Location-Plot alignment
- text / voice / body coherence
- midpoint / high-density consistency pressure

### `continuity-check.md`

Protects canonical state: timeline, physical state, objects, secrets, known facts, promises, and consequences.

It answers "Does this contradict the established story?"

`narrative-coherence-gate.md` additionally asks "Do the character, mind, body, relationship, location, and plot still make sense together?"

### `story-memory-ops.md`

Controls persistent state updates and authorization. New character-dynamics or memory/belief changes still follow Memory Patch Proposal rules before canonical story files are changed.

## Detail Budget

Use the lightest useful resolution.

### Tier 0 — Incidental Character

```text
role + one visible trait
```

Example: tired guard, cheerful cashier.

### Tier 1 — Supporting Character

```text
1-3 traits
conversation habit
characteristic failure
basic want / relationship
```

### Tier 2 — Important Character

Add only relevant:

```text
social-cognitive asymmetry
mid-term pressure
relationship dimensions
knowledge / belief boundaries
```

### Tier 3 — Specialist / Mystery / Social Operator

Add relevant mechanisms:

```text
observation -> inference
mask dynamics
memory activation
ToM lookahead
appraisal logic
```

### Tier 4 — Long-Horizon Core Character

Use the full system where the narrative earns it, including drift and coherence checks.

Do not upgrade resolution merely because a character is intelligent. Detail budget follows narrative relevance and distinctiveness.

## Character Causality

Avoid isolated labels such as:

```text
betrayed in childhood
suspicious
hates promises
```

Prefer an internal causal chain:

```text
past betrayal
-> promises became a threat cue
-> high vigilance around reassurance
-> "trust me" activates that memory
-> suspicion rises before evidence is evaluated
-> character may need observable repair before belief updates
```

This keeps biography connected to present behavior.

## Scene Pipeline

For an important character beat, use only the steps needed:

```text
1. What objectively happened / is happening?
2. What can this character perceive and know?
3. What memory or belief becomes relevant?
4. How do they appraise the event?
5. What short-term emotion and mid-term pressure matter?
6. What do they think the other person knows / wants / fears?
7. What are they trying to achieve or protect?
8. What strategy do they choose?
9. What do they say?
10. What do voice and body reveal, conceal, or contradict?
11. What changes afterward?
```

Do not expose this full pipeline in prose. It is a reasoning scaffold for planning and review.

## Common Failure Modes

### Trait Wallpaper

A humorous character jokes every three lines; a shy character always stammers; a cold character never varies.

Fix: situation-activated expression.

### Psychology Without Causality

Character Card contains many traits and wounds but no explanation for present decisions.

Fix: connect event / memory / value / appraisal / behavior.

### Emotional Reset

A traumatic or humiliating event disappears next scene.

Fix: mid-term state and recovery conditions.

### Omniscient Character Memory

The character retrieves exact information they never learned or remembers every useful detail on demand.

Fix: Anchoring, Selecting, Bounding, Enacting.

### Everyone Shares the Same Truth

Reader knowledge, POV knowledge, suspicion, belief, and canon collapse together.

Fix: epistemic layers.

### Action-Beat Wallpaper

Every line receives a sigh, brow movement, clenched fist, or deep breath.

Fix: action-beat value test.

### Fake Complexity

Every supporting character receives a full psychological matrix.

Fix: detail budget tiers.

### Long-Story Drift

Facts, timeline, persona, or knowledge boundaries deteriorate in the middle of the story.

Fix: run a coherence gate around major midpoint / act transitions and after dense reveal-heavy sequences.

## ACL 2026 Research Anchors

These papers informed the organization of this architecture; SheepStory adapts their useful concepts to fiction authoring rather than copying their runtime implementations.

- Trait Activation in Silicon: situation-aware trait activation and the problem of personality inertia — https://aclanthology.org/2026.acl-long.1792/
- PersonaForge: layered personality, defense mechanisms, dynamic state, selective deeper reasoning — https://aclanthology.org/2026.findings-acl.386/
- Beyond Static Persona Consistency: long / mid / short psychological state and persona drift repair — https://aclanthology.org/2026.acl-long.1336/
- Persona-E2: personality-shaped emotional appraisal of the same event — https://aclanthology.org/2026.acl-long.1350/
- Sentipolis: dual-speed emotion dynamics, emotion-memory coupling, cumulative relationships — https://aclanthology.org/2026.findings-acl.368/
- Memory-Driven Role-Playing: Anchoring, Selecting, Bounding, Enacting persona memory — https://aclanthology.org/2026.findings-acl.1175/
- Infusing Theory of Mind into Socially Intelligent LLM Agents: explicit mental states and dialogue lookahead — https://aclanthology.org/2026.findings-acl.551/
- MENTOR: identity drift and knowledge fidelity in dynamic role-playing — https://aclanthology.org/2026.findings-acl.1046/
- ThinkPersona: persona graphs linking life trajectory, values, relationships, and events — https://aclanthology.org/2026.acl-long.449/
- EvoSpark: social-memory conflict metabolism and Role-Location-Plot alignment — https://aclanthology.org/2026.acl-long.1480/
- PED: separate diagnostic routes for what a persona says and how it sounds — https://aclanthology.org/2026.findings-acl.445/
- Lost in Stories / ConStory-Bench: long-form consistency error taxonomy and mid-story error concentration — https://aclanthology.org/2026.findings-acl.410/

## Principle

A SheepStory character is not a dialogue style preset. A convincing character carries identity, uneven abilities, habits, accumulated state, relationships, bounded knowledge, imperfect memory, interpretations, and a body through time. Use only the layers the story needs, but make those layers causally agree.