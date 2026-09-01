# Story Memory Operations

## Purpose

This file defines how the skill updates long-fiction memory after planning, drafting, and revising.

The goal is to prevent the story from resetting every chapter without turning every transient feeling into permanent canon.

## Memory Layers

Use these layers when available:

```text
story.md                         # Story bible
characters/                      # Character files
worldbuilding/                   # Locations, systems, factions, artifacts
plot/timeline.md                 # Time order
scenes/                          # Scene records
chapters/                        # Chapter drafts and indexes
continuity/state.md              # Current persistent physical / psychological / relational state
continuity/questions/            # Open mysteries
continuity/promises/             # Foreshadowing, vows, threats, Chekhov guns
notes/                           # Scratch notes
```

## Canon Memory vs Character Memory

Do not collapse story truth and character cognition.

```text
canonical event
!= what a character knows
!= what they believe
!= what they remember
!= what they currently infer
```

Canonical files preserve the story's approved truth. Character files may separately record mistaken beliefs, incomplete memories, suspicions, and deliberate pretense.

Use `character-memory-belief.md` when those layers matter.

## Before Planning a Chapter

Read or reconstruct:

1. story premise and tone
2. previous chapter ending
3. current continuity state
4. active character files
5. relevant location/world files
6. open questions
7. open promises
8. timeline constraints
9. relationship state
10. object state
11. active mid-term psychological pressures
12. relevant knowledge / belief boundaries

If missing, ask targeted questions instead of inventing.

## Memory Activation Before a Character Beat

Do not dump every stored fact into every response. When a past event should influence a character, use the lightest form of the four-stage retrieval process:

1. **Anchoring** — what current cue makes the past relevant?
2. **Selecting** — which memory is most relevant by meaning, emotion, relationship, salience, recency, or unresolved consequence?
3. **Bounding** — what could this character actually know or remember at this point?
4. **Enacting** — how does the activated memory change attention, appraisal, emotion, trust, strategy, wording, or behavior?

A memory can influence behavior without triggering an explicit flashback.

## During Planning

For each meaningful beat, track only applicable changes:

- what changes permanently
- who learns what
- what belief or suspicion changes
- what memory is created, reinterpreted, or reactivated
- what object changes owner/status/location
- what relationship dimension shifts
- what short-term emotion or mid-term pressure changes
- what promise or question is opened, advanced, or paid off
- what new continuity obligation is created

## After Drafting a Chapter

Collect candidate changes in this order. Do not write them into canon yet.

### 1. Chapter Index

Add:

- chapter title
- POV
- location
- timeline position
- one-sentence outcome
- draft status

### 2. Continuity State

Update:

- character physical state
- short-term affect when it survives the scene boundary
- mid-term psychological pressure
- relationship dimensions and tensions
- object state
- public claims / threats / promises
- injuries, losses, debts, secrets

Do not persist every fleeting emotion. Persist what will constrain or color later scenes.

### 3. Character Files

For each active character, update only story-bearing changes:

- current goal
- stable identity changes only when genuinely earned
- mid-term psychological state
- what they learned
- what they believe or suspect now
- what they misunderstand
- remembered version when intentionally distinct from canon
- relationship changes by relevant dimension
- new wounds, debts, triggers, or recovery conditions
- coping / defense pattern if newly established
- voice or embodied-baseline notes only if a recurring pattern emerges

Do not promote one emergency reaction into a permanent trait without repeated evidence or explicit approval.

### 4. Timeline

Record:

- date / time / relative order
- travel or recovery time
- simultaneous events
- deadline changes

### 5. Questions and Promises

For every mystery, clue, vow, threat, or foreshadowing:

- opened
- advanced
- paid off
- delayed
- contradicted

### 6. Scene Records

For each scene, record:

- POV
- location
- active characters
- purpose
- state changes
- new information and who received it
- belief / suspicion changes if important
- emotional consequence
- relationship consequence
- object changes
- open threads

## Psychological Update Rule

For major emotional events, prefer a causal update over a label:

```text
event
-> character appraisal
-> short-term affect
-> coping / action
-> mid-term pressure update
-> relationship / memory consequence
```

Read `character-dynamics.md` when an event should continue shaping later behavior.

## Relationship Update Rule

Do not write `relationship +10` as the only state.

Track only relevant dimensions such as trust, respect, affection, attraction, dependence, fear, resentment, debt, safety, rivalry, or authority.

Relationships may be asymmetric and internally conflicted. Reconcile accumulated evidence instead of stacking incompatible summaries.

## Memory Patch Proposal

After state-changing longform drafting or revision, propose a patch before applying it. For quick or standard work without persistent story files, include this only when the user asks for memory tracking.

Classify every proposed fact:

- `verified`: explicitly established by the draft or approved canon
- `inferred`: logically suggested but awaiting confirmation
- `unknown`: missing or contradictory information that blocks a safe update

Use this shape:

```markdown
## Memory Patch Proposal

### Continuity State
- [verified] Physical / short affect / mid-term pressure: ...

### Character Files
- Character:
  - [verified/inferred/unknown] Identity / goal / coping change:
  - [verified/inferred/unknown] Knowledge / belief / memory change:

### Timeline
- ...

### Questions / Promises
- Opened:
- Advanced:
- Paid off:

### Object State
- ...

### Relationship State
- Character A -> Character B:
  - dimension changed:
  - evidence / consequence:

### Conflicts / Decisions Needed
- Existing canon:
- Draft claim:
- Recommended action:
```

Do not promote `inferred` or `unknown` facts to canon merely because they appear in the proposal.

## Apply Authorization

Apply the proposal only when one of these is true:

1. the user explicitly asks to update the story files
2. the current task already established an authorized story-project workflow that includes memory writes
3. the user approves the displayed Memory Patch Proposal

Before writing:

- exclude or resolve `unknown` items
- obtain confirmation for canon-changing `inferred` items
- preserve unrelated file content and existing formatting
- keep contradictions in the proposal instead of silently rewriting history
- preserve the difference between canonical truth and a character's mistaken belief or memory

If the task is analysis-only or no story files are available, return the proposal without applying it.

## Post-Apply Validation

After applying authorized changes:

1. re-read every affected memory file
2. verify the written facts match the approved proposal
3. check character, object, relationship, knowledge, belief, memory, and timeline consistency
4. confirm no reader-only or POV-private information leaked into another character
5. confirm no unrelated canon was removed or rewritten
6. report the files changed and any unresolved contradiction

If validation fails, preserve the previous canon where possible, identify the failed item, and request a decision instead of inventing a repair.

## Contradiction Policy

If a new draft contradicts existing memory:

1. do not silently rewrite memory to fit the draft
2. determine whether the conflict is canonical truth, character belief, or remembered version
3. flag genuine canon contradictions
4. ask whether to revise the draft or retcon canon when necessary
5. record the decision only after authorization

## Principle

Memory files are not bureaucracy. They are the immune system of a long story. Canon remembers what happened; characters may remember, believe, and interpret it differently.