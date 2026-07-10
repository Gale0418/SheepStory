# Story Memory Operations

## Purpose

This file defines how the skill updates long-fiction memory after planning, drafting, and revising.

The goal is to prevent the story from resetting every chapter.

## Memory Layers

Use these layers when available:

```text
story.md                         # Story bible
characters/                      # Character files
worldbuilding/                   # Locations, systems, factions, artifacts
plot/timeline.md                 # Time order
scenes/                          # Scene records
chapters/                        # Chapter drafts and indexes
continuity/state.md              # Current persistent state
continuity/questions/            # Open mysteries
continuity/promises/             # Foreshadowing, vows, threats, Chekhov guns
notes/                           # Scratch notes
```

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

If missing, ask targeted questions instead of inventing.

## During Planning

For each beat, track:

- what changes permanently
- who learns what
- what object changes owner/status/location
- what relationship shifts
- what promise or question is opened, advanced, or paid off
- what new continuity obligation is created

## After Drafting a Chapter

Collect candidate changes in this order. Do not write them into canon yet:

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
- character emotional state
- relationship state
- object state
- public claims / threats / promises
- injuries, losses, debts, secrets

### 3. Character Files

For each active character, update:

- current goal
- current emotional state
- what they learned
- what they misunderstand
- relationship changes
- new wounds or debts
- voice notes if a new speech pattern appears

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
- new information
- emotional consequence
- object changes
- open threads

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
- [verified] ...

### Character Files
- Character:
  - [verified/inferred/unknown] Change:

### Timeline
- ...

### Questions / Promises
- Opened:
- Advanced:
- Paid off:

### Object State
- ...

### Relationship State
- ...

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

If the task is analysis-only or no story files are available, return the proposal without applying it.

## Post-Apply Validation

After applying authorized changes:

1. re-read every affected memory file
2. verify the written facts match the approved proposal
3. check character, object, relationship, knowledge, and timeline consistency
4. confirm no unrelated canon was removed or rewritten
5. report the files changed and any unresolved contradiction

If validation fails, preserve the previous canon where possible, identify the failed item, and request a decision instead of inventing a repair.

## Contradiction Policy

If a new draft contradicts existing memory:

1. do not silently rewrite memory to fit the draft
2. flag the contradiction
3. ask whether to revise the draft or retcon canon
4. record the decision only after authorization

## Principle

Memory files are not bureaucracy. They are the immune system of a long story.
