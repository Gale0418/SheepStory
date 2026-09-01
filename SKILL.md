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
17. Keep reasoning, observation, social skill, charisma, empathy, tact, assertiveness, and ethics separable when they affect character behavior; do not infer one from another.
18. Treat expressive traits such as enthusiasm, humor, talkativeness, bluntness, formality, warmth, or awkwardness as situation-activated tendencies rather than fixed catchphrases.
19. Keep world truth, character knowledge, belief, memory, suspicion, and displayed knowledge separate when they matter.
20. Distinguish long-term identity, mid-term psychological pressure, and short-term affect; do not reset consequences between scenes or mistake temporary state for a new trait.
21. Use facial expression, gesture, breathing, posture, gaze, movement, touch, distance, and object interaction selectively when they carry subtext, evidence, rhythm, or consequence.

## Reference Routing

- Planning: `skills/sheep-story/references/outline-gate.md`, `skills/sheep-story/references/conflict-pressure.md`, plus `skills/sheep-story/references/story-architecture.md` for complete arcs and `skills/sheep-story/references/opposition-design.md` for persistent opposition.
- New story setup: record supplied durable requirements in the Project Brief immediately, use `skills/sheep-story/references/story-foundation.md`, then apply `skills/sheep-story/references/story-project-layout.md` after Foundation approval.
- Conversational personality, standout traits, humor, talkativeness, awkwardness, warmth, bluntness, social habits, or characteristic expression: `skills/sheep-story/references/trait-expression-library.md`.
- Character cognition, observation, social ability, charisma, empathy, tact, masking, hidden agenda, or characteristic social failure: `skills/sheep-story/references/social-cognitive-profile.md`.
- Event appraisal, emotional continuity, accumulated pressure, coping / defense, or relationship evolution: `skills/sheep-story/references/character-dynamics.md`.
- Character memory, knowledge, belief, suspicion, secrets, mistaken recollection, or Theory-of-Mind reasoning: `skills/sheep-story/references/character-memory-belief.md`.
- Facial expression, gaze, breath, posture, gesture, movement, distance, touch, object interaction, physiological leakage, or other meaningful action beats: `skills/sheep-story/references/embodied-expression.md`.
- Long-horizon persona drift, knowledge leakage, Role-Location-Plot alignment, dense multi-character continuity, or text/voice/body coherence: `skills/sheep-story/references/narrative-coherence-gate.md`.
- Drafting: `skills/sheep-story/references/voice-calibration.md`, `style-preservation.md`, plus task-specific references.
- Editorial rewrite: `skills/sheep-story/references/editorial-rewrite.md`, `voice-calibration.md`, and `style-preservation.md`.
- Review: `skills/sheep-story/references/review-rubric.md`, `style-preservation.md`, plus visible failure-mode references.
- Memory: `skills/sheep-story/references/story-memory-ops.md`, `continuity-check.md`, plus character dynamics or character memory/belief references when those states changed.
- Cockpit routing: `skills/sheep-story/references/story-cockpit-workflow.md`.
- Authoring experiments: `skills/sheep-story/references/authoring-laboratory.md` (reader simulation, sandbox-only characters, alternate takes, and bridge writing).
- State evidence: `skills/sheep-story/references/story-state-ledgers.md` (claim provenance, events, existing promises, and editorial issues without duplicating canon).
- Recovery and run contracts: `skills/sheep-story/references/project-recovery-and-runs.md`.
- Pacing, reveal, and extension boundaries: `skills/sheep-story/references/pacing-reveal-and-extensions.md`.

## Approval

Explicit approval includes 「可以，開始寫」「照這個寫」「大綱 OK」「確認，動筆」 and equivalent unambiguous instructions. Generic reactions such as 「嗯嗯」「好像可以」「有趣」「繼續想」 are not approval.

## Principle

Make the workflow proportional: remember and reason before writing, without turning every sentence into project management.

Laboratory, advisory, recovery, and extension work remains Markdown-only and contract-only. Consensus, parser output, and sandbox results are evidence or proposals, not canon; canonical files remain the single truth source and require explicit authorization for mutation.
