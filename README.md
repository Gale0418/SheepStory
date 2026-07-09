# SheepStory

SheepStory is a fiction-writing Agent Skill project for outline-first, continuity-safe, conflict-aware, scene-textured AI-assisted novel writing.

This repository is designed around one practical rule:

```text
Do not make the AI write more. Make it remember, route ideas, reason, see the scene, face constraints, and only then write.
```

## Skill entrypoints

This repo supports two common layouts:

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
├── references/
│   ├── anti-ai-flavour.md
│   ├── chapter-contract.md
│   ├── cinematic-scene-texture.md
│   ├── conflict-pressure.md
│   ├── continuity-check.md
│   ├── dialogue-checklist.md
│   ├── failure-modes.md
│   ├── genius-strategy.md
│   ├── outline-gate.md
│   ├── review-rubric.md
│   ├── source-map.md
│   ├── story-cockpit-workflow.md
│   ├── story-memory-ops.md
│   ├── story-project-layout.md
│   ├── style-preservation.md
│   ├── technical-explanation-voice.md
│   └── voice-calibration.md
└── style-profiles/
    ├── cinematic-hard-sf.md
    ├── dark-strategy.md
    ├── light-novel-dialogue.md
    ├── military-sf.md
    ├── quiet-emotional-detail.md
    └── technical-first-person.md
```

## Supporting files

```text
docs/
├── fiction-skill-design.md
├── quality-checklist.md
└── webui-design.md

examples/
├── usage-prompts.md
└── worked-outline-example.md

worked-examples/
├── fake-genius-to-reasoning-chain.md
├── lore-dump-to-scene-texture.md
├── peaceful-scene-to-conflict-pressure.md
├── polite-dialogue-to-subtext.md
└── textbook-science-to-technical-voice.md

tests/
├── 01-outline-gate.md
├── 02-continuity-missing.md
├── 03-too-peaceful.md
├── 04-fake-genius.md
├── 05-lore-dump.md
├── 06-technical-decoration.md
├── 07-dialogue-exposition.md
└── 08-over-polish.md

templates/
├── cockpit/
│   ├── chapter-contract.md
│   ├── export-prompt.md
│   ├── idea.md
│   └── plot-thread.md
└── story-project/
    ├── story.md
    ├── characters/_template.md
    ├── chapters/_template.md
    └── continuity/state.md
```

## Core rules

1. No idea goes directly into prose; route it to a character, thread, chapter contract, world rule, clue, conflict, technical beat, promise, or maybe-later pile.
2. No prose before outline approval.
3. No drafting without continuity state.
4. No peaceful scene unless the peace has dramatic function.
5. No fake genius: intelligence must be shown through observation, reasoning, tradeoff, and cost.
6. No perfect plan: strategy must be the best available plan under current constraints.
7. No enemy stupidity: competent opponents get a red-team pass.
8. No over-polishing: remove AI flavour without sterilizing the author's voice.
9. No detached worldbuilding lecture: setting and systems must enter through scene texture.
10. No decorative science lecture: technical explanation must change action, decision, risk, or emotion.
11. No vague review: name the failure mode, preserve what works, and list memory updates.

## SheepStory Cockpit

SheepStory Cockpit is the planned WebUI / story control panel for stopping ideas from scattering.

It focuses on:

- Idea Inbox
- Story State
- Plot Threads
- Chapter Contract
- Export Prompt

The design is documented in:

```text
docs/webui-design.md
```

The skill workflow rules are in:

```text
skills/my-novel-writing/references/story-cockpit-workflow.md
```

## Recommended use

Copy or link `skills/my-novel-writing/` into an Agent Skills-compatible environment, then ask for tasks like:

```text
Use my-novel-writing to route these scattered ideas before planning.
Use my-novel-writing to create a chapter contract from these ideas.
Use my-novel-writing to export a prompt for the next chapter outline.
Use my-novel-writing to plan the next chapter.
Use my-novel-writing to continuity-check this outline.
Use my-novel-writing to polish this dialogue without making it polite.
Use my-novel-writing to design a genius-vs-genius scene with limited resources.
Use my-novel-writing to add cinematic scene texture without story-external worldbuilding lectures.
Use my-novel-writing to add technical reasoning with dry crisis humor and practical stakes.
Use my-novel-writing with style profile technical-first-person.
Use my-novel-writing to review this chapter with scores and what to preserve.
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

Use broad craft techniques. Do not reproduce a specific source's exact phrasing, named setting, characters, or plot beats.

## Quality checks

Before treating a new version as release-ready, run through:

```text
docs/quality-checklist.md
```

For regression-style checks, run prompts from:

```text
tests/
```

For transformation examples, read:

```text
worked-examples/
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

## License

MIT. See `LICENSE`.
