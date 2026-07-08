---
name: sheep-story
description: Root compatibility entrypoint for SheepStory. Use when planning, drafting, revising, continuity-checking, or polishing fiction with outline approval, story state, conflict pressure, cinematic scene texture, authorial voice, anti-AI-flavour, or genius-level strategy. Delegates to skills/my-novel-writing for the full implementation.
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
Do I know the scene goal?
Do I know the conflict pressure?
Do I know the scene texture plan?
Has the user approved the outline?
```

If any answer is no, do not draft prose yet.

## Required References

When available, load and follow:

- `skills/my-novel-writing/references/story-project-layout.md`
- `skills/my-novel-writing/references/outline-gate.md`
- `skills/my-novel-writing/references/continuity-check.md`
- `skills/my-novel-writing/references/conflict-pressure.md`
- `skills/my-novel-writing/references/cinematic-scene-texture.md`
- `skills/my-novel-writing/references/genius-strategy.md`
- `skills/my-novel-writing/references/dialogue-checklist.md`
- `skills/my-novel-writing/references/style-preservation.md`
- `skills/my-novel-writing/references/anti-ai-flavour.md`
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

## Default Workflow

1. Identify task stage: setup, planning, drafting, review, dialogue polish, style polish, scene texture, or genius strategy.
2. Reconstruct current story state.
3. Produce a discussion outline with scene texture when setting or worldbuilding matters.
4. Run continuity, conflict, texture, and relevant strategy checks.
5. Ask for explicit approval.
6. Draft only after approval.
7. Run post-draft checks.
8. Present the result and list unresolved risks.

## Approval Gate

Explicit approval examples:

- 「可以，開始寫」
- 「照這個寫」
- 「大綱 OK」
- 「確認，動筆」
- `Approved. Draft it.`

Generic reactions like 「嗯嗯」「好像可以」「有趣」「繼續想」 do not count as approval.

## Principle

SheepStory is not for making AI write more. It is for making AI remember, reason, face constraints, see the scene, and only then write.
