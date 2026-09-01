# Continuity Check

## Purpose

Continuity check prevents the story from resetting itself. It protects plot state, emotional consequences, character knowledge, object state, timeline, promises, payoffs, and the difference between canonical truth and character-specific belief.

For wider persona, spatial, and long-horizon drift review, pair this with `narrative-coherence-gate.md`.

## Pre-Draft Continuity Gate

Before drafting prose, reconstruct the current story state.

Required fields:

```markdown
## Current Story State

### Last Known Position
- Last chapter / scene:
- Current location:
- Current time:
- Active POV:

### Character State
| Character | Physical state | Short affect / mid-term pressure | Relationship changes | Knows / believes / cannot know | Continuity status (verified/inferred/unknown) |
|---|---|---|---|---|---|

### Object State
| Object | Owner | Location | Status | Last changed in | Continuity status (verified/inferred/unknown) |
|---|---|---|---|---|---|

### Open Threads
- Unresolved mysteries:
- Promises / foreshadowing:
- Pending consequences:
- Relationship tensions:
- Political / social pressure:
- Persistent psychological pressure:

### Forbidden Contradictions
- Facts that must not change:
- Things the POV cannot know:
- Things specific characters cannot know yet:
- Injuries, deaths, losses, debts, betrayals, or emotional consequences that must still matter:
```

If any required field cannot be reconstructed, do not draft. Ask targeted continuity questions instead.

### Continuity Status Rules

- **verified**: The fact is explicitly written in previous chapter text or approved memory.
- **inferred**: The fact is a highly probable logical consequence, but requires user confirmation before relying on it heavily.
- **unknown**: The fact is missing from context. If it blocks drafting, ask the user.

A character's belief can be verified as a belief while still being factually wrong. Example: `[verified belief] Alice thinks Bob saw her crying` does not establish `[verified world truth] Bob saw Alice crying`.

## Epistemic Boundary

Keep these separate when relevant:

```text
world truth
character knowledge
character belief
character memory
current suspicion / inference
publicly displayed knowledge
```

Use `character-memory-belief.md` for retrieval, memory distortion, belief updating, secrets, or Theory-of-Mind lookahead.

## Common Failure Patterns

Reject or flag these:

- A dead, absent, injured, captured, restrained, or exhausted character acts normally without explanation.
- A character knows information they never learned.
- Reader knowledge or another POV's private thought leaks into a character.
- A character's mistaken belief is silently rewritten into canonical truth.
- A relationship softens or hardens without a scene earning the change.
- A destroyed, lost, or transferred object reappears casually.
- A mystery is answered before it is planted.
- A payoff happens before setup.
- A traumatic, humiliating, or relationship-changing event has no later emotional echo.
- Mid-term stress, grief, resentment, vigilance, or confidence resets without recovery.
- The timeline allows impossible travel, recovery, communication, observation, or participation.
- A faction forgets what it publicly promised or threatened.

## Role-Location-Plot Check

For complex movement or multi-character scenes, verify:

```text
character role / goal
+ current location
+ time
+ access / visibility / audibility
+ physical condition
+ plot participation
```

If this becomes a wider coherence problem, use `narrative-coherence-gate.md`.

## Post-Draft Continuity Pass

After drafting, check:

1. Did every permanent change remain permanent?
2. Did the POV and every active character only know what the story allowed them to know?
3. Did belief, memory, suspicion, and canonical truth remain distinct?
4. Did emotional and relationship consequences survive into the scene where they should matter?
5. Did any object or secret move without tracking?
6. Did any promise, question, clue, or foreshadowing change state?
7. Did location, time, visibility, injury, restraint, or travel make any action impossible?
8. Did the scene create new continuity obligations?

## Mid-Story Pressure Pass

Long stories deserve an extra consistency pass before the ending, especially:

- around a midpoint or major act transition
- after a time skip
- after a cast reunion
- after dense reveal-heavy chapters
- after battles or multi-location sequences
- before paying off old clues or promises

Prioritize factual and temporal contradictions first, then characterization, epistemic boundaries, relationships, and world rules.

## Output Shape for Problems

```markdown
| Location | Continuity issue | Layer (truth / knowledge / belief / memory / state / object / timeline) | Evidence | Fix |
|---|---|---|---|---|
```

## Principle

A novel is not a sequence of isolated scenes. Every scene inherits debt from the scenes before it, but each character inherits only the knowledge, memory, emotion, and location that actually belong to them.