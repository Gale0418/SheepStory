# SheepStory

SheepStory is a fiction-writing Agent Skill project for outline-first, continuity-safe, conflict-aware AI-assisted novel writing.

This repository is designed around one practical rule:

```text
Do not make the AI write more. Make it remember, reason, face constraints, and only then write.
```

## Current skill

```text
skills/my-novel-writing/
├── SKILL.md
└── references/
    ├── anti-ai-flavour.md
    ├── conflict-pressure.md
    ├── continuity-check.md
    ├── dialogue-checklist.md
    ├── genius-strategy.md
    ├── outline-gate.md
    ├── source-map.md
    ├── story-project-layout.md
    └── style-preservation.md
```

## Core rules

1. No prose before outline approval.
2. No drafting without continuity state.
3. No peaceful scene unless the peace has dramatic function.
4. No fake genius: intelligence must be shown through observation, reasoning, tradeoff, and cost.
5. No perfect plan: strategy must be the best available plan under current constraints.
6. No enemy stupidity: competent opponents get a red-team pass.
7. No over-polishing: remove AI flavour without sterilizing the author's voice.

## Recommended use

Copy or link `skills/my-novel-writing/` into an Agent Skills-compatible environment, then ask for tasks like:

```text
Use my-novel-writing to plan the next chapter.
Use my-novel-writing to continuity-check this outline.
Use my-novel-writing to polish this dialogue without making it polite.
Use my-novel-writing to design a genius-vs-genius scene with limited resources.
```

## Design notes

The long design discussion is kept in:

```text
docs/fiction-skill-design.md
```

The implementation mapping and source inspirations are in:

```text
skills/my-novel-writing/references/source-map.md
```
