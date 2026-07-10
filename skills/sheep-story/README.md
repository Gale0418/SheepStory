# sheep-story

`sheep-story` is the main SheepStory skill.

It is an outline-first fiction-writing and story-organization skill for long-form stories, scattered idea routing, chapter contracts, scenes, dialogue polish, continuity checks, cinematic scene texture, technical explanation voice, anti-AI-flavour revision, review scoring, memory updates, and genius-level strategy design.

## Files

```text
SKILL.md
references/
├── anti-ai-flavour.md
├── chapter-contract.md
├── cinematic-scene-texture.md
├── conflict-pressure.md
├── continuity-check.md
├── dialogue-checklist.md
├── editorial-rewrite.md
├── failure-modes.md
├── genius-strategy.md
├── outline-gate.md
├── review-rubric.md
├── source-map.md
├── story-cockpit-workflow.md
├── story-foundation.md
├── story-memory-ops.md
├── story-project-layout.md
├── style-preservation.md
├── technical-explanation-voice.md
└── voice-calibration.md
style-profiles/
├── sheepstory-house-style.md
├── zh-tw-fiction.md
├── cinematic-hard-sf.md
├── dark-strategy.md
├── light-novel-dialogue.md
├── military-sf.md
├── quiet-emotional-detail.md
└── technical-first-person.md
```

## Trigger Tasks

Use this skill for:

- routing scattered ideas before planning
- building a Story Cockpit / WebUI workflow
- creating a chapter contract
- planning a chapter before drafting
- checking whether an outline contradicts prior canon
- making a scene less peaceful without adding random violence
- adding cinematic detail and concrete visual anchors
- embedding worldbuilding inside action, objects, friction, and desire
- adding technical explanation that changes action, risk, decision, or emotion
- reviewing drafts with scores, failure modes, and what to preserve
- updating long-story memory after a chapter
- polishing dialogue so it has intention, obstacle, and subtext
- removing AI flavour without over-polishing
- writing genius-vs-genius strategy scenes
- creating a story bible and continuity memory

## Most Important Rules

```text
Route canon-affecting ideas before prose. Local phrasing, gestures, sensory detail, and non-canon texture may be improvised without Cockpit bookkeeping.
Standard and longform original prose require outline approval. Quick mode may treat a sufficiently specific bounded prompt as the approved brief.
```

For standard and longform original prose, the agent must route relevant ideas, produce a discussion outline, and wait for explicit approval before prose. Quick mode may directly execute a sufficiently specific bounded request.

## Minimal Usage Prompt

```text
Use sheep-story to route these scattered ideas before planning. Do not draft prose yet.
```

## Strong Usage Prompt

```text
Use sheep-story.
First route the ideas into character, plot thread, chapter contract, clue, conflict, technical beat, promise, or maybe-later.
Then reconstruct continuity state.
Then create a Chapter Contract.
Then produce a beat outline where each beat advances action, information, relationship, emotion, risk, or state. Reserve irreversible change for scene or chapter turns where it fits.
Also produce a Scene Texture Plan with close physical anchor, character object, daily friction, sensory layer, and world detail revealed through action.
If the scene involves science, engineering, equipment, or survival, include a Technical Reasoning Beat with problem, clue, principle, estimate, uncertainty, decision, risk, and human reaction.
Do not write prose until I explicitly approve the outline.
```

## Cockpit Prompt

```text
Use sheep-story in Story Cockpit mode.
Take these scattered ideas and sort them into Idea Inbox, Plot Threads, Story State, Chapter Contract, and Export Prompt.
Do not write prose.
```

## Style Profile Prompt

```text
Use sheep-story with style profile technical-first-person and cinematic-hard-sf.
```

## Review Prompt

```text
Use sheep-story to review this scene.
Check continuity, conflict pressure, scene texture, technical explanation, dialogue subtext, fake-genius problems, AI flavour, and style preservation.
Return scores, critical issues, what to preserve, and a revision plan before suggesting rewrites.
```

## Memory Update Prompt

```text
Use sheep-story to produce memory updates after this chapter.
Update continuity state, character files, timeline, questions, promises, object state, and relationship state.
```

## Principle

The skill exists to keep AI from becoming smooth, forgetful, over-polite, fake-clever, visually empty, technically decorative, and bad at remembering consequences.
