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
skills/sheep-story/SKILL.md # Full skill implementation
```

Use the nested skill directly when your agent supports skill folders. Use the root `SKILL.md` when your agent only scans the repository root.

## Current package

```text
skills/sheep-story/
├── README.md
├── SKILL.md
├── references/
│   ├── anti-ai-flavour.md
│   ├── chapter-contract.md
│   ├── cinematic-scene-texture.md
│   ├── conflict-pressure.md
│   ├── continuity-check.md
│   ├── dialogue-checklist.md
│   ├── editorial-rewrite.md
│   ├── failure-modes.md
│   ├── genius-strategy.md
│   ├── outline-gate.md
│   ├── opposition-design.md
│   ├── review-rubric.md
│   ├── source-map.md
│   ├── story-cockpit-workflow.md
│   ├── story-foundation.md
│   ├── story-architecture.md
│   ├── story-memory-ops.md
│   ├── story-project-layout.md
│   ├── style-preservation.md
│   ├── technical-explanation-voice.md
│   └── voice-calibration.md
└── style-profiles/
    ├── sheepstory-house-style.md
    ├── zh-tw-fiction.md
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
├── 08-over-polish.md
├── 09-quiet-scene.md
├── 10-direct-dialogue.md
├── 11-quick-mode.md
├── 12-approved-outline.md
├── 13-mixed-revision.md
├── 14-document-framing.md
├── 15-claim-preservation.md
├── 16-adult-plain-language.md
├── 17-minimal-no-op.md
├── 18-vague-new-story.md
├── 19-world-first-seed.md
├── 20-character-first-seed.md
├── 21-specified-foundation.md
├── 22-optional-structure.md
├── 23-coherent-opposition.md
├── 24-capability-ceiling.md
├── 25-promise-and-ending.md
└── 26-project-only-constraint.md

templates/
├── cockpit/
│   ├── chapter-contract.md
│   ├── export-prompt.md
│   ├── idea.md
│   └── plot-thread.md
└── story-project/
    ├── project-brief.md
    ├── story.md
    ├── characters/_template.md
    ├── chapters/_template.md
    ├── worldbuilding/world-book.md
    ├── continuity/state.md
    └── continuity/promises/_template.md
```

## Core rules

1. Route canon-affecting ideas before prose; allow local phrasing, gestures, sensory detail, and non-canon texture without bookkeeping.
2. Standard and longform original prose require outline approval; bounded quick work may use a specific prompt as the approved brief.
3. Load continuity proportionately: persistent state for longform work, relevant context for standard work, and only the supplied brief for standalone quick work.
4. Quiet scenes are valid when they have a dramatic function; pressure and irreversible change belong at scene or chapter level, not every beat.
5. No fake genius: intelligence must be shown through observation, reasoning, tradeoff, and cost.
6. No perfect plan: strategy must be the best available plan under current constraints.
7. No enemy stupidity: competent opponents get a red-team pass.
8. No over-polishing: remove AI flavour without sterilizing the author's voice.
9. Keep worldbuilding inside scene texture unless the user intentionally requests a dramatic document, archive, epigraph, or reference format.
10. No decorative science lecture: technical explanation must change action, decision, risk, or emotion.
11. No vague review: name the failure mode, preserve what works, and propose classified memory patches when persistent state changed.
12. Select structure by story function; four-act structure is available but never mandatory.
13. Keep protagonists within approved capability ceilings and give persistent opposition independent agency.
14. Store project-only requirements in the Project Brief instead of turning examples into generic defaults.
15. Track promise lifecycles and answer the core dramatic question at major endings without forcing total closure.

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
skills/sheep-story/references/story-cockpit-workflow.md
```

## Installation & Usage

Install this repository as a Codex Plugin by pointing your plugin manager to the root directory (where `.codex-plugin/plugin.json` is located).

Once installed, you can ask your agent for tasks like:

```text
Use sheep-story to build a World Book and Character Cards for a new story.
Use sheep-story to route these scattered ideas before planning.
Use sheep-story to create a chapter contract from these ideas.
Use sheep-story to export a prompt for the next chapter outline.
Use sheep-story to plan the next chapter.
Use sheep-story to select an architecture for this complete short story.
Use sheep-story to model this institution as coherent opposition without inventing a mastermind.
Use sheep-story to continuity-check this outline.
Use sheep-story to polish this dialogue without making it polite.
Use sheep-story to design a genius-vs-genius scene with limited resources.
Use sheep-story to add cinematic scene texture without story-external worldbuilding lectures.
Use sheep-story to add technical reasoning with dry crisis humor and practical stakes.
Use sheep-story with style profile technical-first-person.
Use sheep-story to review this chapter with scores and what to preserve.
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
skills/sheep-story/references/source-map.md
```

## License

MIT. See `LICENSE`.
