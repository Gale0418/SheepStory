# Story Project Layout

## Purpose

This layout gives long fiction and interactive character projects durable memory outside the model. Use only the folders the project needs. The structure should track canon, reader promise, characters, worldbuilding, continuity, belief divergence, and chapter state without turning every short story into a database migration.

## Recommended Structure

```text
story-project/
├── project-brief.md
├── reader-promise.md                 # optional; durable emotional / tonal contract
├── story.md
├── characters/
│   └── _index.md
├── character-cards/                  # optional; only for role-play/card projects
│   ├── source/
│   ├── audits/
│   └── exports/
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
│   ├── misunderstandings/            # optional; active divergent models
│   │   └── _index.md
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

Before creating these files for a new underspecified story, use `story-foundation.md` to produce and approve the Reader Promise when relevant, World Book, core Character Cards, and User / Player Role Contract for interactive work. Do not write model-generated proposals into canon as if the user had confirmed them.

## project-brief.md

Read the Project Brief before the Story Bible. It records:

- target form and scale
- required and forbidden elements
- reader experience and tonal boundaries
- user / player role assumptions for interactive work
- project-specific immutable truths
- capability ceilings
- world costs
- content boundaries
- influence shorthand translated into functions
- still-open decisions

Project-specific restrictions remain scoped to this story. Do not convert them into SheepStory defaults, infer loopholes around them, or silently treat proposed choices as verified canon.

## reader-promise.md

Create this only when tone, suffering, hope, humor, surprise, recovery, or ending range needs durable tracking across a long project.

Use `templates/cockpit/reader-promise.md` and `reader-promise-and-tone.md`.

Track:

- core emotional experience
- darkness and hope range
- humor function
- recovery / respite rhythm
- treatment of violence or trauma
- surprise and relationship contract
- agency / consequence contract
- likely ending range
- prohibited tonal outcomes

Do not record every scene mood. Record the emotional rules the work promises to honor.

## Character Files

Each major character may use the applicable subset of:

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

## Optional Contrast / Dissonance

## Strengths

## Limits / Blind Spots

## Capability Ceiling

## Failure-State Continuity

## Trait Expression

## Social-Cognitive Profile

## Psychological Dynamics

## Optional Embodied Baseline

## Unacceptable Cost

## Voice

## Relationships

## Epistemic State

## Current Pressure

## Change Hypothesis

## Canon Status

## Current State

## Change Log
```

Do not fill every section by default. A supporting character usually needs only function, agency, desire, one to three standout traits, a characteristic failure, and relevant continuity. Expand contrast, cognition, psychology, memory, or body only when those mechanisms drive story behavior.

## character-cards/

Use only when the project imports, audits, tests, or exports AI role-play cards.

Suggested use:

- `source/`: preserved original card text or manually supplied snapshots
- `audits/`: prompt-to-behavior analysis and player-review evidence
- `exports/`: generated platform-specific card variants

Use `templates/cockpit/character-card-audit.md` and `character-card-engineering.md`.

Keep card source and audit evidence separate from canonical story files. Public ratings, comments, and shared chats are evidence about runtime behavior, not story canon or automatic proof of prompt causality.

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

## New Information and Recipients

## Belief / Misunderstanding Changes

## Emotional and Relationship Consequences

## Object / Location Changes

## Tone / Recovery Function, if durable

## Open Threads
```

## Continuity State

`continuity/state.md` should track only persistent or still-active state:

```markdown
# Continuity State

## Character State

## Object State

## Epistemic State

## Active Misunderstandings

## Relationship State

## Active Psychological Pressures

## Injuries / Damage / Losses

## Public Claims / Promises / Threats

## Location / Access Constraints

## Reader-Promise / Tone State

## Open Threads
```

A false belief can be verified as character state without becoming canonical truth.

## Misunderstanding Ledgers

Create a ledger when a belief divergence persists across scenes, drives action, or risks becoming difficult to reconstruct.

Use `templates/cockpit/misunderstanding-ledger.md` and `misunderstanding-tragedy.md`.

Track:

- canonical truth
- each person's evidence, missing evidence, belief, confidence, and public claim
- actions generated by those beliefs
- new reinforcing evidence
- repair windows and blockers
- irreversible threshold
- reader / narrator knowledge
- revelation and aftermath

Retire or archive the ledger after the misunderstanding is resolved, reframed, or rendered irrelevant. Do not leave a repaired false belief active in continuity state.

## Promises and Questions

Track promises and questions separately:

- `continuity/questions/` for mysteries and unanswered story questions
- `continuity/promises/` for foreshadowing, setups, threats, vows, tonal promises, and Chekhov guns

Use `templates/story-project/continuity/promises/_template.md` for promises. Track setup evidence, reader and character knowledge, expected narrative weight, intended payoff window, acceptable transformations, payoff consequence, closure evidence, and the lifecycle:

`proposed` → `open` → `advanced` / `reframed` → `paid`, `delayed`, `contradicted`, `intentionally-unresolved`, or `retired`.

## Chapter Workflow

Before writing a new chapter:

1. Read `project-brief.md`.
2. Read `reader-promise.md` when present.
3. Read `story.md`.
4. Read `chapters/_index.md`.
5. Read the previous chapter or previous scene record.
6. Read relevant character files.
7. Read `plot/timeline.md`.
8. Read `continuity/state.md`.
9. Read active misunderstanding ledgers, questions, and promises.
10. For a long, tactical, technical, emotional-turning-point, misunderstanding-driven, tonal-turn, or continuity-heavy chapter, create and validate a chapter contract.
11. Produce the outline.
12. Wait for approval before original prose.
13. Draft, or revise supplied prose directly when no original prose is requested.
14. Update continuity, belief, misunderstanding, relationship, promise, and reader-promise obligations.

## Organization Guardrails

- Do not duplicate canonical facts across many summaries without a declared source of truth.
- Do not copy public card reviews into Character Cards as personality facts.
- Do not create a misunderstanding ledger for one line of harmless confusion.
- Do not persist every expression or short-term emotion.
- Do not let optional folders become mandatory bureaucracy.
- Archive superseded audits and exports rather than mixing versions.
- Keep creator notes, runtime prompts, story canon, and research evidence in their own layers.

## Principle

The project layout is external memory, not decoration. It should make the next correct decision easier: what is true, what each character believes, what the reader has been promised, what remains unresolved, and which files are merely evidence rather than canon.