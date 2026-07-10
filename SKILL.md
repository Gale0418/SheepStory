---
name: sheep-story
description: Use when planning, drafting, revising, reviewing, continuity-checking, or organizing fiction; managing SheepStory story data; editing supplied fiction, synopsis, lore, pitches, or author notes for clarity, concision, naturalness, or voice; or explicitly invoking SheepStory for a prose rewrite.
---

# SheepStory Compatibility Entrypoint

Use the canonical implementation at:

```text
skills/sheep-story/SKILL.md
```

When the environment discovers nested plugin skills, use `sheep-story` from that directory. When it scans only a repository-root `SKILL.md`, apply the compatibility rules below and load stage-specific references from `skills/sheep-story/`.

## Select a Mode

### Quick

Use for microfiction, short standalone scenes, narrow rewrites, dialogue polish, style polish, and supplied prose. Treat a sufficiently specific prompt as the approved brief. Do not require a chapter contract or persistent memory.

### Standard

Use by default for scene or chapter work. Reconstruct relevant continuity, propose a compact outline for original prose, and wait for explicit approval.

### Longform

Use for ongoing or continuity-heavy novels and complex tactical, technical, mystery, or emotional turning-point chapters. Require a chapter contract, explicit outline approval, and a Memory Patch Proposal after state-changing work.

Choose the lightest safe mode and follow explicit user mode choices.

## Compatibility Rules

1. Route only canon-affecting ideas: changes to character state, plot, world rules, timeline, clues, promises, relationships, or important objects.
2. For a new underspecified story, ask one high-leverage question at a time and approve a World Book plus core Character Cards before plot or prose.
3. Allow local sensory detail, phrasing, gestures, and non-canon texture without bookkeeping.
4. Preserve supplied prose and authorial voice; do not over-polish.
5. In standard and longform modes, do not draft substantial original story direction before explicit outline approval.
6. Revision, review, dialogue polish, and style polish of supplied text bypass the approval gate.
7. Classify important continuity facts as `verified`, `inferred`, or `unknown`; do not invent missing canon.
8. Require active pressure or a clear dramatic function at scene level, not irreversible change in every beat.
9. Reveal worldbuilding through the scene unless an intentional document format is requested.
10. Include technical explanation only when it changes action, decision, risk, understanding, or emotion.
11. Show intelligence through reconstructable reasoning, tradeoffs, cost, opponent competence, and model updates.
12. Keep decisive actions within approved capability ceilings; route new exceptional abilities before use.
13. Treat structure models, including four-act structure, as conditional tools rather than universal defaults.
14. Track promise status and answer the core dramatic question at major endings without forcing every minor thread closed.
15. Treat style profiles as optional preferences, never universal defaults.
16. Propose memory changes before applying them; never silently rewrite canon.

## Reference Routing

- Planning: `skills/sheep-story/references/outline-gate.md`, `skills/sheep-story/references/conflict-pressure.md`, plus `skills/sheep-story/references/story-architecture.md` for complete arcs and `skills/sheep-story/references/opposition-design.md` for persistent opposition.
- New story setup: record supplied durable requirements in the Project Brief immediately, use `skills/sheep-story/references/story-foundation.md`, then apply `skills/sheep-story/references/story-project-layout.md` after Foundation approval.
- Drafting: `skills/sheep-story/references/voice-calibration.md`, `style-preservation.md`, plus task-specific references.
- Editorial rewrite: `skills/sheep-story/references/editorial-rewrite.md`, `voice-calibration.md`, and `style-preservation.md`.
- Review: `skills/sheep-story/references/review-rubric.md`, `style-preservation.md`, plus visible failure-mode references.
- Memory: `skills/sheep-story/references/story-memory-ops.md` and `continuity-check.md`.
- Cockpit routing: `skills/sheep-story/references/story-cockpit-workflow.md`.

## Approval

Explicit approval includes 「可以，開始寫」「照這個寫」「大綱 OK」「確認，動筆」 and equivalent unambiguous instructions. Generic reactions such as 「嗯嗯」「好像可以」「有趣」「繼續想」 are not approval.

## Principle

Make the workflow proportional: remember and reason before writing, without turning every sentence into project management.
