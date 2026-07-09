# my-novel-writing

`my-novel-writing` is the main SheepStory skill.

It is an outline-first fiction-writing skill for long-form stories, scenes, chapters, dialogue polish, continuity checks, cinematic scene texture, technical explanation voice, anti-AI-flavour revision, review scoring, memory updates, and genius-level strategy design.

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
├── failure-modes.md
├── genius-strategy.md
├── outline-gate.md
├── review-rubric.md
├── source-map.md
├── story-memory-ops.md
├── story-project-layout.md
├── style-preservation.md
├── technical-explanation-voice.md
└── voice-calibration.md
style-profiles/
├── cinematic-hard-sf.md
├── dark-strategy.md
├── light-novel-dialogue.md
├── military-sf.md
├── quiet-emotional-detail.md
└── technical-first-person.md
```

## Trigger Tasks

Use this skill for:

- planning a chapter before drafting
- creating a chapter contract
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

## Most Important Rule

```text
No prose before outline approval.
```

The agent must first produce a discussion outline and wait for explicit approval.

## Minimal Usage Prompt

```text
Use my-novel-writing to plan the next chapter. Do not draft prose yet.
```

## Strong Usage Prompt

```text
Use my-novel-writing.
First reconstruct continuity state.
Then create a Chapter Contract.
Then produce a beat outline with desire, obstacle, cost, turn, and irreversible change for each beat.
Also produce a Scene Texture Plan with close physical anchor, character object, daily friction, sensory layer, and world detail revealed through action.
If the scene involves science, engineering, equipment, or survival, include a Technical Reasoning Beat with problem, clue, principle, estimate, uncertainty, decision, risk, and human reaction.
Do not write prose until I explicitly approve the outline.
```

## Style Profile Prompt

```text
Use my-novel-writing with style profile technical-first-person and cinematic-hard-sf.
```

## Review Prompt

```text
Use my-novel-writing to review this scene.
Check continuity, conflict pressure, scene texture, technical explanation, dialogue subtext, fake-genius problems, AI flavour, and style preservation.
Return scores, critical issues, what to preserve, and a revision plan before suggesting rewrites.
```

## Memory Update Prompt

```text
Use my-novel-writing to produce memory updates after this chapter.
Update continuity state, character files, timeline, questions, promises, object state, and relationship state.
```

## Principle

The skill exists to keep AI from becoming smooth, forgetful, over-polite, fake-clever, visually empty, technically decorative, and bad at remembering consequences.
