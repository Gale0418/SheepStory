# Story Project Layout

## Purpose

This layout gives long fiction a durable memory outside the model. The agent should use these files to track canon, characters, worldbuilding, continuity, and chapter state.

## Recommended Structure

```text
story-project/
├── project-brief.md
├── story.md
├── characters/
│   └── _index.md
├── worldbuilding/
│   ├── world-book.md
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

Before creating these files for a new underspecified story, use `story-foundation.md` to produce and approve the World Book and core Character Cards. Do not write model-generated proposals into canon as if the user had confirmed them.

## project-brief.md

Read the Project Brief before the Story Bible. It records the target form, required and forbidden elements, project-specific immutable truths, capability ceilings, world costs, content boundaries, and still-open decisions.

Project-specific restrictions remain scoped to this story. Do not convert them into SheepStory defaults, infer loopholes around them, or silently treat proposed choices as verified canon.

## Character Files

Each major character should have:

```markdown
---
type: character
name:
role:
status: active
foundation-status: proposed
first-appearance:
---

# Character Name

## Function in Story

## Agency

## Public Face

## Private Want

## Flaw / Coping Strategy

## Fear / Wound

## Contradiction

## Strengths

## Limits / Blind Spots

## Capability Ceiling

## Unacceptable Cost

## Voice

## Relationships

## Knowledge State

## Current Pressure

## Change Hypothesis

## Canon Status

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

Use `templates/story-project/continuity/promises/_template.md` for promises. Track setup evidence, reader and character knowledge, expected narrative weight, intended payoff window, acceptable transformations, payoff consequence, closure evidence, and the lifecycle:

`proposed` → `open` → `advanced` / `reframed` → `paid`, `delayed`, `contradicted`, `intentionally-unresolved`, or `retired`.

## Chapter Workflow

Before writing a new chapter:

1. Read `project-brief.md`.
2. Read `story.md`.
3. Read `chapters/_index.md`.
4. Read previous chapter or previous scene record.
5. Read relevant character files.
6. Read `plot/timeline.md`.
7. Read `continuity/state.md`.
8. Read open questions and promises.
9. For a long, tactical, technical, emotional-turning-point, or continuity-heavy chapter, create and validate a chapter contract.
10. Produce outline.
11. Wait for approval before original prose.
12. Draft, or revise supplied prose directly when no original prose is requested.
13. Update continuity obligations.

## Principle

The story bible is not decoration. It is the external memory that prevents the novel from resetting every chapter.
