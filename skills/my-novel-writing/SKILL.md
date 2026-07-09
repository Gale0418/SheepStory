---
name: my-novel-writing
description: Use when planning, drafting, revising, continuity-checking, polishing, reviewing, or organizing fiction where outline approval, story state, idea routing, chapter contracts, conflict pressure, scene texture, technical explanation voice, memory updates, authorial voice, or genius-level strategy matters. This skill supports both prose work and SheepStory Cockpit workflows for preventing scattered ideas from breaking continuity.
---

# My Novel Writing

## Purpose

This skill helps write and organize fiction without letting the AI become a smooth, forgetful, over-polite content machine.

It is designed to prevent ten common failures:

1. Drafting prose before the outline is approved.
2. Forgetting previous plot, character state, emotional consequences, object state, or timeline.
3. Making scenes too peaceful, too reasonable, or too quickly resolved.
4. Portraying intelligent characters through narration instead of visible reasoning.
5. Giving genius characters perfect plans, perfect resources, or perfect information.
6. Making competent opponents stupid so the protagonist can win.
7. Removing AI flavour so aggressively that the author's voice becomes sterile.
8. Explaining worldbuilding outside the scene instead of revealing it through lived details.
9. Adding science, math, or engineering explanation that does not change a scene decision, risk, action, or emotional beat.
10. Letting scattered ideas enter prose without being routed to story purpose, chapter contract, or continuity state.

## When to Use

Use this skill when the user asks to:

- capture, sort, or route scattered story ideas
- design a WebUI / dashboard / story cockpit
- create a chapter contract
- start a fiction project or story bible
- plan a chapter, scene, arc, reveal, or confrontation
- write or continue fiction prose after approval
- revise a chapter while preserving voice
- add cinematic detail, atmosphere, visual continuity, or lived-in worldbuilding
- add practical science, engineering, military, or hard-SF reasoning in character voice
- check continuity, timeline, promises, payoffs, or character knowledge
- polish dialogue that feels expository, too polite, or too direct
- remove AI flavour from prose
- review a draft and identify what fails and what to preserve
- update long-story memory after a chapter
- write genius, strategist, detective, mastermind, scientist, inventor, tactician, or high-IQ antagonist scenes

Do not use this skill for:

- poetry-only requests
- non-fiction articles
- pure grammar correction without narrative judgment
- screenplay formatting as the main task
- real-world operational harm, violence, or wrongdoing instructions

## Operating Law

Before writing prose, verify:

```text
Do I know the current story state?
Do I know the chapter contract or scene goal?
Do I know which ideas belong here and which must wait?
Do I know the conflict pressure?
Do I know the scene texture plan?
Do I know whether technical reasoning is needed and what action it changes?
Has the user approved the outline?
```

If any answer is no, do not draft prose yet.

## Stage Selection

### 0. Story Cockpit / Idea Routing

Use when the user has scattered ideas, wants a WebUI, does not know what they want, or needs to prevent plot fragmentation.

Read:

- `references/story-cockpit-workflow.md`
- `references/voice-calibration.md`
- `references/story-memory-ops.md`
- `references/chapter-contract.md`

Output one of:

- idea routing table
- plot thread map
- story state checklist
- chapter contract
- export prompt for `my-novel-writing`
- WebUI / data model guidance

Do not draft prose in this stage.

### 1. Project Setup

Use when the user wants to start a new story, organize a long story, or create reusable story files.

Read:

- `references/story-project-layout.md`
- `references/story-cockpit-workflow.md`
- `references/story-memory-ops.md`
- `references/voice-calibration.md`
- `references/source-map.md` when explaining what inspired the structure

Output a proposed project structure and ask what story information is already known.

### 2. Planning / Outline

Use when the user is deciding what a chapter, scene, arc, or reveal should do before prose exists.

Read:

- `references/voice-calibration.md`
- `references/story-cockpit-workflow.md` if ideas need routing
- `references/chapter-contract.md` for chapters, turning points, or complex scenes
- `references/outline-gate.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/cinematic-scene-texture.md` when atmosphere, setting, visual detail, or worldbuilding matters
- `references/technical-explanation-voice.md` when science, engineering, math, hard-SF, equipment, or practical reasoning matters
- `references/genius-strategy.md` when high-intelligence planning or tactics are involved

Output a chapter contract or discussion outline and stop. Do not draft prose until explicit approval.

### 3. Drafting / Continuing

Use only after explicit outline approval.

Before drafting, read:

- `references/voice-calibration.md`
- `references/outline-gate.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/cinematic-scene-texture.md`
- `references/technical-explanation-voice.md` when the scene includes calculations, scientific explanation, engineering improvisation, equipment constraints, or crisis competence
- `references/style-preservation.md`
- `references/dialogue-checklist.md` if the scene has dialogue
- `references/genius-strategy.md` if the scene contains high-intelligence tactics, mystery, deduction, or mastermind planning

Draft prose, then run post-draft gates before presenting the final text.

### 4. Revision / Review

Use when the user provides existing prose or asks what is wrong with a chapter.

Read:

- `references/review-rubric.md`
- `references/failure-modes.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/cinematic-scene-texture.md`
- `references/technical-explanation-voice.md`
- `references/dialogue-checklist.md`
- `references/style-preservation.md`
- `references/anti-ai-flavour.md`

Output concrete findings first. Always include what to preserve.

### 5. Style Polish / Anti-AI Flavour

Use when the user asks to remove AI flavour, make text more human, preserve roughness, add scene texture, preserve technical voice, or avoid generic writing.

Read:

- `references/voice-calibration.md`
- `references/anti-ai-flavour.md`
- `references/style-preservation.md`
- `references/cinematic-scene-texture.md` when the passage needs concrete image, sensory detail, or scene-contained worldbuilding
- `references/technical-explanation-voice.md` when the passage needs technical reasoning, dry humor, or practical competence

Never over-polish. Fiction should feel chosen, not sterilized.

### 6. Memory Update

Use after drafting or revising a chapter.

Read:

- `references/story-memory-ops.md`
- `references/continuity-check.md`

Output memory updates needed for continuity state, character files, timeline, questions, promises, object state, and relationship state.

## Style Profiles

When the user requests a specific texture, optionally load a profile from `style-profiles/`:

- `style-profiles/cinematic-hard-sf.md`
- `style-profiles/technical-first-person.md`
- `style-profiles/military-sf.md`
- `style-profiles/quiet-emotional-detail.md`
- `style-profiles/light-novel-dialogue.md`
- `style-profiles/dark-strategy.md`

Profiles are preferences, not hard rules. Current story state and user instructions take priority.

## Hard Rules

### No Idea Goes Directly Into Prose

Every new idea must be routed to at least one of:

- character
- plot thread
- chapter contract
- worldbuilding rule
- technical reasoning beat
- conflict pressure
- foreshadowing / promise
- maybe-later pile

If an idea has no story purpose yet, keep it in Idea Inbox or maybe-later.

### Outline Approval Gate

Never draft full prose before the outline is approved.

Acceptable approval examples:

- 「可以，開始寫」
- 「照這個寫」
- 「大綱 OK」
- 「確認，動筆」
- `Approved. Draft it.`

Generic reactions such as 「嗯嗯」「好像可以」「有趣」「繼續想」「OK maybe」 do not count as approval.

### Continuity First

Before writing any prose, load or reconstruct story state.

If the context is missing, produce a continuity question list instead of drafting.

### Chapter Contract Before Complex Chapters

For long, high-continuity, tactical, technical, or emotional turning-point chapters, create a chapter contract before the beat outline.

The contract must identify what the chapter must accomplish, what it must not do, which ideas are allowed, which ideas must wait, required continuity, emotional change, conflict pressure, scene texture, technical reasoning, forbidden shortcuts, and end state.

### Conflict Pressure Required

Each scene beat must have desire, obstacle, cost, turn, irreversible change, and subtext or hidden pressure.

If a beat has no active pressure, revise the outline before drafting.

### Scene Texture Required When Worldbuilding Appears

If a scene includes setting, technology, institutions, military systems, social structure, or speculative worldbuilding, reveal it through scene texture.

Avoid detached worldbuilding lectures and lore that does not change action, mood, choice, or tension.

### Technical Explanation Must Change the Scene

If a scene includes science, math, engineering, military procedure, or practical reasoning, the explanation must be motivated by scene pressure.

If nothing changes, cut or compress the explanation.

### No Peaceful Scene Unless Earned

A peaceful scene is allowed only if it creates contrast, dread, intimacy, false safety, setup, or future damage.

### Genius Is Not Narration

Show intelligence through hidden observations, constrained reasoning, rejected plans, tradeoffs, cost, opponent competence, fallback logic, and model updates after failure.

### No Perfect Plan

The correct plan is the best available plan under current constraints, not the cleanest victory.

### Anti-AI-Flavour Pass

After drafting prose, remove plastic phrasing while preserving ambiguity, roughness, rhythm, authorial texture, concrete scene texture, and practical technical voice.

### Review Must Preserve What Works

Every review must include critical issues, medium issues when useful, what to preserve, revision plan, and unresolved questions only when blocking.

## Cockpit Output Shapes

### Idea Routing

```markdown
## Idea Routing

| Idea | Type | Belongs to | Use now/later | Risk | Next action |
|---|---|---|---|---|---|
```

### Export Prompt

```markdown
Use my-novel-writing.

## Current Story State
...

## Chapter Contract
...

## Ideas To Use
...

## Ideas To Avoid
...

## Continuity Constraints
...

## Style Profiles
...

## Task
Produce a discussion outline only. Do not draft prose until explicitly approved.
```

## Working Pattern

1. Identify the stage.
2. If the user has scattered ideas, route ideas before planning.
3. Load the minimum required reference files.
4. Reconstruct story state before any prose task.
5. Create a chapter contract when needed.
6. Produce a discussion outline with scene texture and technical reasoning beats when needed.
7. Run continuity, conflict, texture, technical explanation, failure-mode, and relevant strategy checks on the outline.
8. Ask for explicit approval.
9. Draft only after approval.
10. Run post-draft checks and memory update notes.
11. Present unresolved risks.

## References

- `references/voice-calibration.md`
- `references/story-cockpit-workflow.md`
- `references/story-project-layout.md`
- `references/story-memory-ops.md`
- `references/chapter-contract.md`
- `references/outline-gate.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/cinematic-scene-texture.md`
- `references/technical-explanation-voice.md`
- `references/genius-strategy.md`
- `references/dialogue-checklist.md`
- `references/style-preservation.md`
- `references/anti-ai-flavour.md`
- `references/failure-modes.md`
- `references/review-rubric.md`
- `references/source-map.md`
