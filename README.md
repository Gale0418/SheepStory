# SheepStory

SheepStory is a fiction-writing Agent Skill project for outline-first, continuity-safe, conflict-aware, scene-textured AI-assisted novel writing.

This repository is designed around one practical rule:

```text
Do not make the AI write more. Make it remember, reason, see the scene, face constraints, and only then write.
```

## Skill entrypoints

This repo now supports two common layouts:

```text
SKILL.md                         # Root compatibility entrypoint
skills/my-novel-writing/SKILL.md # Full skill implementation
```

Use the nested skill directly when your agent supports skill folders. Use the root `SKILL.md` when your agent only scans the repository root.

## Current package

```text
skills/my-novel-writing/
├── README.md
├── SKILL.md
└── references/
    ├── anti-ai-flavour.md
    ├── cinematic-scene-texture.md
    ├── conflict-pressure.md
    ├── continuity-check.md
    ├── dialogue-checklist.md
    ├── genius-strategy.md
    ├── outline-gate.md
    ├── source-map.md
    ├── story-project-layout.md
    ├── style-preservation.md
    └── technical-explanation-voice.md
```

## Supporting files

```text
docs/
├── fiction-skill-design.md
└── quality-checklist.md

examples/
├── usage-prompts.md
└── worked-outline-example.md

templates/story-project/
├── story.md
├── characters/_template.md
├── chapters/_template.md
└── continuity/state.md
```

## Core rules

1. No prose before outline approval.
2. No drafting without continuity state.
3. No peaceful scene unless the peace has dramatic function.
4. No fake genius: intelligence must be shown through observation, reasoning, tradeoff, and cost.
5. No perfect plan: strategy must be the best available plan under current constraints.
6. No enemy stupidity: competent opponents get a red-team pass.
7. No over-polishing: remove AI flavour without sterilizing the author's voice.
8. No detached worldbuilding lecture: setting and systems must enter through scene texture.
9. No decorative science lecture: technical explanation must change action, decision, risk, or emotion.

## Recommended use

Copy or link `skills/my-novel-writing/` into an Agent Skills-compatible environment, then ask for tasks like:

```text
Use my-novel-writing to plan the next chapter.
Use my-novel-writing to continuity-check this outline.
Use my-novel-writing to polish this dialogue without making it polite.
Use my-novel-writing to design a genius-vs-genius scene with limited resources.
Use my-novel-writing to add cinematic scene texture without story-external worldbuilding lectures.
Use my-novel-writing to add technical reasoning with dry crisis humor and practical stakes.
```

If your agent only supports one root skill file, use:

```text
Use sheep-story to plan the next chapter.
```

## Style target

SheepStory can be steered toward detailed, cinematic, lived-in prose where worldbuilding emerges from:

- body and habit
- daily objects
- rooms, streets, vehicles, stations, ships, or battlefields
- friction, cost, scarcity, latency, maintenance, or surveillance
- close-to-wide visual movement
- character longing and denial

For hard-SF, engineering, survival, or military scenes, SheepStory can also use technical explanation voice:

- practical calculations
- material limits
- equipment constraints
- measurement and anomaly detection
- dry humor under pressure
- first-person competence with uncertainty
- explanation that changes the next action

It must not copy any specific copyrighted prose, franchise setting, institution, plot, character, or author voice. The goal is to borrow broad craft techniques, not protected expression.

## Quality checks

Before treating a new version as release-ready, run through:

```text
docs/quality-checklist.md
```

The checklist includes tests for:

- outline gate behavior
- missing continuity behavior
- conflict smoothing detection
- fake genius rejection
- scene texture without lore dumps
- technical explanation with scene consequence
- anti-AI-flavour preservation

## Design notes

The long design discussion is kept in:

```text
docs/fiction-skill-design.md
```

The implementation mapping and source inspirations are in:

```text
skills/my-novel-writing/references/source-map.md
```

## License

MIT. See `LICENSE`.
