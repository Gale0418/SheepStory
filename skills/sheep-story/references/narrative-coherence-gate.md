# Narrative Coherence Gate

## Purpose

Use this reference for long-running stories, multi-character scenes, complex spatial action, or review passes where character drift, knowledge leakage, timeline contradictions, or location-plot mismatch are plausible.

This gate complements `continuity-check.md`. Continuity protects established facts; this gate also checks whether active character behavior, psychology, knowledge, and physical presence still make sense together.

## Five Coherence Routes

Check only routes relevant to the scene or review.

### 1. Identity / Persona Coherence

Ask:

- Does behavior still fit long-term identity, traits, values, and capability limits?
- If behavior differs from baseline, is the change explained by mid-term state, short-term affect, relationship, mask, or new evidence?
- Has a trait become a repetitive gimmick rather than situation-dependent behavior?
- Has the character drifted into generic helpful-assistant speech?

Variation is not drift when the story explains it.

### 2. Epistemic Coherence

Ask:

- Could this character know this?
- Did they observe, learn, infer, or receive it?
- Are knowledge, belief, memory, suspicion, and pretense being confused?
- Did one POV's private information leak into another character?

Use `character-memory-belief.md` when the answer depends on mental-state layers.

### 3. Emotional / Relationship Coherence

Ask:

- Did a major event leave an emotional echo?
- Did mid-term stress, grief, resentment, confidence, or vigilance reset without recovery?
- Did a relationship dimension change without evidence?
- Are contradictory relationship summaries being stacked instead of reconciled?

Use `character-dynamics.md` for appraisal, state, and relationship metabolism.

### 4. Role-Location-Plot Coherence

For every active character or object, verify:

```text
role / goal
+ physical location
+ time
+ access / visibility / audibility
+ current plot function
```

Reject scenes where:

- a character appears without travel or access
- someone sees or hears through impossible distance or obstruction
- injuries, restraints, equipment, crowding, terrain, gravity, or timing make an action impossible
- a character leaves a location but still participates as if present
- an object moves without an owner, carrier, transfer, or plausible mechanism
- the plot requires a person to be somewhere their role and timeline cannot support

### 5. Text / Voice / Body Coherence

For important spoken moments, separate:

- text content
- vocal delivery
- embodied expression

Intentional mismatch creates subtext. Accidental mismatch creates persona noise.

Use `vocal-impact.md` for vocal delivery and `embodied-expression.md` for body-language action beats.

## Mid-Story Pressure Check

Long stories often accumulate contradictions before the ending. Do not wait until final review.

Run an extra coherence pass:

- around major midpoint / act transitions
- after dense high-entropy chapters with many reveals or state changes
- after time skips
- after cast reunions
- after large battles, travel, or multi-location sequences
- after a major identity / secret reveal
- before paying off old promises or clues

Focus first on factual and temporal consistency, then characterization and world rules.

## Persona Drift Check

Compare the current portrayal against two anchors:

1. **stable baseline** — long-term identity, values, traits, capabilities, voice
2. **current trajectory** — accumulated pressure, recent events, active relationships, changed beliefs

Flag when:

- a personality trait vanishes without reason
- a negative trait is sanitized whenever pressure rises
- a character becomes universally tactful, helpful, eloquent, or reasonable despite established limits
- a character repeats catchphrases instead of adapting behavior to situation
- a temporary mood is mistaken for a permanent identity rewrite

Repair by tracing the last evidence-supported state, not by resetting to the original Character Card.

## Drift / Recovery Loop

For a suspicious behavior:

```markdown
Observed deviation:
Stable baseline:
Current trajectory:
Possible in-story explanation:
Evidence for explanation:
Drift or earned variation?:
Repair if needed:
```

Do not rewrite canon simply to make the deviation fit. If the draft creates a real character change, route it as a canon-affecting proposal.

## Knowledge-Leak Gate

Before a reveal, mystery deduction, or multi-character discussion, build a compact epistemic table:

```markdown
| Character | Directly knows | Suspects | Believes falsely | Pretends | Cannot know yet |
|---|---|---|---|---|---|
```

Then inspect every decisive line or action against it.

A character may guess correctly without knowing; mark it as inference and preserve uncertainty.

## Coherence Checker Output

When reporting problems, use evidence:

```markdown
| Route | Location | Problem | Prior evidence | Current evidence | Severity | Recommended fix |
|---|---|---|---|---|---|---|
```

Severity guidance:

- **critical** — breaks causality, timeline, identity, secret logic, or world rules
- **major** — undermines character/relationship continuity or scene plausibility
- **minor** — distracting but locally repairable inconsistency

## Error Clustering

One contradiction can cause several downstream failures.

Example:

```text
wrong location
-> impossible witness
-> knowledge leak
-> premature deduction
-> relationship reaction based on information never obtained
```

Fix the earliest causal error instead of patching each symptom separately.

## Automated Checker Boundary

A deterministic or LLM-based checker is evidence, not canon.

- require textual evidence for flagged contradictions
- distinguish definite contradiction from ambiguity
- do not infer author intent from consensus
- do not auto-retcon story memory
- present correction proposals for approval when canon changes

## Principle

Long-form coherence is not merely remembering facts. The character, their mind, their body, their relationships, their location, and the plot must all inhabit the same version of the story at the same time.