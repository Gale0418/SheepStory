---
name: my-novel-writing
description: Use when planning, drafting, revising, continuity-checking, or polishing fiction where outline approval, story state, conflict pressure, authorial voice, or genius-level strategy matters. This skill is for novels, serial fiction, scenes, chapters, dialogue, and story-world continuity.
---

# My Novel Writing

## Purpose

This skill helps write fiction without letting the AI become a smooth, forgetful, over-polite content machine.

It is designed to prevent seven common failures:

1. Drafting prose before the outline is approved.
2. Forgetting previous plot, character state, emotional consequences, object state, or timeline.
3. Making scenes too peaceful, too reasonable, or too quickly resolved.
4. Portraying intelligent characters through narration instead of visible reasoning.
5. Giving genius characters perfect plans, perfect resources, or perfect information.
6. Making competent opponents stupid so the protagonist can win.
7. Removing AI flavour so aggressively that the author's voice becomes sterile.

## When to Use

Use this skill when the user asks to:

- start a fiction project or story bible
- plan a chapter, scene, arc, reveal, or confrontation
- write or continue fiction prose
- revise a chapter while preserving voice
- check continuity, timeline, promises, payoffs, or character knowledge
- polish dialogue that feels expository, too polite, or too direct
- remove AI flavour from prose
- write genius, strategist, detective, mastermind, scientist, inventor, tactician, or high-IQ antagonist scenes
- design a plan under limited resources
- make sure a twist has setup, cost, and consequences

Do not use this skill for:

- poetry-only requests
- non-fiction articles
- pure grammar correction without narrative judgment
- screenplay formatting as the main task
- real-world operational harm, violence, or wrongdoing instructions

## Operating Law

Before writing prose, ask:

```text
Do I know the current story state?
Do I know the scene goal?
Do I know the conflict pressure?
Has the user approved the outline?
```

If any answer is no, do not draft prose yet.

## Stage Selection

First route the task to the right stage.

### 1. Project Setup

Use when the user wants to start a new story, organize a long story, or create reusable story files.

Read:

- `references/story-project-layout.md`
- `references/source-map.md` when explaining what inspired the structure

Output a proposed project structure and ask what story information is already known.

### 2. Planning / Outline

Use when the user is deciding what a chapter, scene, arc, or reveal should do before prose exists.

Read:

- `references/outline-gate.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/genius-strategy.md` when high-intelligence planning or tactics are involved

Output a discussion outline and stop. Do not draft prose until explicit approval.

### 3. Drafting / Continuing

Use only after explicit outline approval.

Before drafting, read:

- `references/outline-gate.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/style-preservation.md`
- `references/dialogue-checklist.md` if the scene has dialogue
- `references/genius-strategy.md` if the scene contains high-intelligence tactics, mystery, deduction, or mastermind planning

Draft prose, then run the post-draft gates before presenting the final text.

### 4. Revision / Review

Use when the user provides existing prose or asks what is wrong with a chapter.

Read:

- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/dialogue-checklist.md`
- `references/style-preservation.md`
- `references/anti-ai-flavour.md`

Output concrete findings first. Include location, issue, why it fails, and how to revise.

### 5. Style Polish / Anti-AI Flavour

Use when the user asks to remove AI flavour, make text more human, preserve roughness, or avoid generic writing.

Read:

- `references/anti-ai-flavour.md`
- `references/style-preservation.md`

Never over-polish. Fiction should feel chosen, not sterilized.

## Hard Rules

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

Before writing any prose, load or reconstruct story state:

- last chapter ending
- current location
- active characters
- emotional state
- injuries, debts, secrets, promises
- who knows what
- object ownership and status
- open questions, mysteries, foreshadowing, and payoffs
- facts that must not be contradicted

If the context is missing, produce a continuity question list instead of drafting.

### Conflict Pressure Required

Each scene beat must have:

- desire
- obstacle
- cost
- turn
- irreversible change
- subtext or hidden pressure

If a beat has no active pressure, revise the outline before drafting.

### No Peaceful Scene Unless Earned

A peaceful scene is allowed only if it creates contrast, dread, intimacy, false safety, setup, or future damage.

Do not let characters resolve major conflict just because healthy communication is available.

### Genius Is Not Narration

Do not portray intelligence by saying the character is smart.

Show intelligence through:

- hidden observations
- constrained reasoning
- rejected plans
- tradeoffs
- cost
- opponent competence
- fallback logic
- model updates after failure

### No Perfect Plan

A plan that requires perfect obedience, perfect timing, enemy stupidity, no collateral consequences, and information the character does not possess is invalid.

The correct plan is the best available plan under current constraints, not the cleanest victory.

### Anti-AI-Flavour Pass

After drafting prose, run an anti-AI-flavour pass:

- replace generic emotional summary with visible action
- vary sentence and paragraph rhythm
- cut vague dramatic abstractions
- remove over-explanation
- make dialogue pursue intention against obstacle
- preserve ambiguity, roughness, rhythm, and authorial texture

Do not make every sentence elegant. Do not turn fiction into sanitized content.

## Working Pattern

1. Identify the stage.
2. Load the minimum required reference files.
3. Reconstruct story state before any prose task.
4. Produce a discussion outline.
5. Run continuity and conflict gates on the outline.
6. Ask for explicit approval.
7. Draft only after approval.
8. Run post-draft checks: continuity, conflict, dialogue, style preservation, anti-AI flavour.
9. Present the result and list any unresolved risks.

## Output Expectations

When planning, use this shape:

```markdown
## Proposed Outline

### Scene / Chapter Goal

### Current Continuity State

### Beats

1. Beat name
   - Purpose:
   - POV:
   - Desire:
   - Obstacle:
   - Cost:
   - Turn:
   - Irreversible change:

### Risks

### Questions for You
```

When reviewing, use this shape:

```markdown
## Findings

| Location | Issue | Why it fails | Revision direction |
|---|---|---|---|
```

When drafting, produce prose only after the user approves the outline.

## References

- `references/story-project-layout.md`
- `references/outline-gate.md`
- `references/continuity-check.md`
- `references/conflict-pressure.md`
- `references/genius-strategy.md`
- `references/dialogue-checklist.md`
- `references/style-preservation.md`
- `references/anti-ai-flavour.md`
- `references/source-map.md`
