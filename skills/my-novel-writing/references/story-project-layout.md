# Story Project Layout

## Purpose

This layout gives long fiction a durable memory outside the model. The agent should use these files to track canon, characters, worldbuilding, continuity, and chapter state.

## Recommended Structure

```text
story-project/
├── story.md
├── characters/
│   └── _index.md
├── worldbuilding/
│   ├── _index.md
│   ├── locations/
│   ├── systems/
│   ├── factions/
│   └── artifacts/
├── plot/
│   ├── _index.md
│   ├── arcs/
│   └── timeline.md
├── scenes/
│   └── _index.md
├── continuity/
│   ├── state.md
│   ├── questions/
│   │   └── _index.md
│   └── promises/
│       └── _index.md
├── chapters/
│   └── _index.md
└── notes/
```

## story.md

Use for the story bible:

```markdown
---
title:
genre:
subgenre:
status: planning
pov:
tense:
themes: []
---

# Story Bible

## Synopsis

## Tone & Style

## Core Cast

## World Premise

## Rules / Constraints

## Notes
```

## Character Files

Each major character should have:

```markdown
---
type: character
name:
role:
status: active
first-appearance:
---

# Character Name

## Function in Story

## Public Face

## Private Want

## Fear / Wound

## Voice

## Relationships

## Knowledge State

## Current State

## Change Log
```

## Scene Records

Each scene record should track machine-readable continuity:

```markdown
---
type: scene
chapter:
scene:
pov:
location:
characters: []
arcs-advanced: []
status: drafted
state-changes: []
---

# Scene Record

## What Changes

## New Information

## Emotional Consequences

## Object / Location Changes

## Open Threads
```

## Continuity State

`continuity/state.md` should track persistent state:

```markdown
# Continuity State

## Character State

## Object State

## Knowledge State

## Relationship State

## Injuries / Damage / Losses

## Public Claims / Promises / Threats
```

## Promises and Questions

Track promises and questions separately:

- `continuity/questions/` for mysteries and unanswered story questions
- `continuity/promises/` for foreshadowing, setups, threats, vows, and Chekhov guns

Each item should include:

```markdown
---
type: question-or-promise
status: open
introduced-in:
paid-off-in:
---

# Title

## Setup

## Current Reader Knowledge

## Relevant Characters

## Payoff Plan
```

## Chapter Workflow

Before writing a new chapter:

1. Read `story.md`.
2. Read `chapters/_index.md`.
3. Read previous chapter or previous scene record.
4. Read relevant character files.
5. Read `plot/timeline.md`.
6. Read `continuity/state.md`.
7. Read open questions and promises.
8. Produce outline.
9. Wait for approval.
10. Draft.
11. Update continuity obligations.

## Principle

The story bible is not decoration. It is the external memory that prevents the novel from resetting every chapter.
