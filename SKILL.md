---
name: sheep-story
description: Root compatibility entrypoint for SheepStory. Use when planning, drafting, revising, continuity-checking, or polishing fiction with outline approval, story state, conflict pressure, cinematic scene texture, technical explanation voice, review quality, memory updates, authorial voice, anti-AI-flavour, or genius-level strategy. Delegates to skills/my-novel-writing for the full implementation.
---

# SheepStory

This is the root compatibility entrypoint for the SheepStory fiction-writing skill.

Use the full implementation at:

```text
skills/my-novel-writing/SKILL.md
```

If the environment supports nested skills, use `my-novel-writing` directly.

If the environment only scans a root `SKILL.md`, treat this file as the active skill and follow the rules below.

## Core Operating Law

Before writing prose, verify:

```text
Do I know the current story state?
Do I know the chapter contract or scene goal?
Do I know the conflict pressure?
Do I know the scene texture plan?
Do I know whether technical reasoning is needed and what action it changes?
Has the user approved the outline?
```

If any answer is no, do not draft prose yet.

## Required References

When available, load and follow:

- `skills/my-novel-writing/references/voice-calibration.md`
- `skills/my-novel-writing/references/story-project-layout.md`
- `skills/my-novel-writing/references/story-memory-ops.md`
- `skills/my-novel-writing/references/chapter-contract.md`
- `skills/my-novel-writing/references/outline-gate.md`
- `skills/my-novel-writing/references/continuity-check.md`
- `skills/my-novel-writing/references/conflict-pressure.md`
- `skills/my-novel-writing/references/cinematic-scene-texture.md`
- `skills/my-novel-writing/references/technical-explanation-voice.md`
- `skills/my-novel-writing/references/genius-strategy.md`
- `skills/my-novel-writing/references/dialogue-checklist.md`
- `skills/my-novel-writing/references/style-preservation.md`
- `skills/my-novel-writing/references/anti-ai-flavour.md`
- `skills/my-novel-writing/references/failure-modes.md`
- `skills/my-novel-writing/references/review-rubric.md`
- `skills/my-novel-writing/references/source-map.md`

## Non-Negotiable Rules

1. No prose before outline approval.
2. No drafting without continuity state.
3. No peaceful scene unless the peace has dramatic function.
4. No fake genius: intelligence must be shown through observation, reasoning, tradeoff, and cost.
5. No perfect plan: strategy must be the best available plan under current constraints.
6. No enemy stupidity: competent opponents get a red-team pass.
7. No over-polishing: remove AI flavour without sterilizing the author's voice.
8. No detached worldbuilding lecture: setting and systems must enter through scene texture.
9. No decorative science lecture: technical explanation must change action, decision, risk, or emotion.
10. No vague review: name the failure mode, preserve what works, and list memory updates.

## Default Workflow

1. Identify task stage: setup, planning, drafting, review, dialogue polish, style polish, scene texture, technical explanation, memory update, or genius strategy.
2. Reconstruct current story state.
3. Create a chapter contract when the chapter is complex, technical, tactical, or continuity-heavy.
4. Produce a discussion outline with scene texture and technical reasoning when setting, equipment, science, or hard-SF constraints matter.
5. Run continuity, conflict, texture, technical explanation, failure-mode, and relevant strategy checks.
6. Ask for explicit approval.
7. Draft only after approval.
8. Run post-draft checks and memory update notes.
9. Present the result and list unresolved risks.

## Approval Gate

Explicit approval examples:

- 「可以，開始寫」
- 「照這個寫」
- 「大綱 OK」
- 「確認，動筆」
- `Approved. Draft it.`

Generic reactions like 「嗯嗯」「好像可以」「有趣」「繼續想」 do not count as approval.

## Principle

SheepStory is not for making AI write more. It is for making AI remember, reason, see the scene, understand the technical pressure, protect what works, and only then write.
