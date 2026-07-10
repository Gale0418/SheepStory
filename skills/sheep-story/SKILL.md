---
name: sheep-story
description: Use when planning, drafting, revising, reviewing, continuity-checking, or organizing fiction; managing SheepStory story data; editing supplied fiction, synopsis, lore, pitches, or author notes for clarity, concision, naturalness, or voice; or explicitly invoking SheepStory for a prose rewrite. Do not use for poetry-only work, screenplay formatting, pure grammar correction, generic non-fiction without explicit invocation, or real-world harmful operational guidance.
---

# SheepStory

## Purpose

Write and organize fiction without becoming a smooth, forgetful, over-polite content machine.

Prevent these failures:

- inventing missing canon or forgetting persistent state
- drafting substantial story direction before the user approves it
- routing every minor prose detail through bureaucracy
- making quiet scenes inert or every beat melodramatically irreversible
- announcing intelligence instead of showing reasoning and tradeoffs
- making opponents stupid or plans perfect
- flattening the author's voice during polish
- detaching worldbuilding or technical explanation from scene consequence

## Select an Operating Mode

Choose the lightest mode that safely handles the task. Honor an explicit user mode choice. State the selected mode briefly when it changes the workflow.

### Quick

Use for microfiction, short standalone scenes, narrow rewrites, dialogue polish, style polish, and supplied prose.

- Treat a sufficiently specific user prompt as the approved brief.
- Ask only for information that blocks the requested result.
- Do not require a chapter contract or persistent memory files.
- Use a compact outline only when substantial story choices remain unresolved.

### Standard

Use by default for scene or chapter planning and drafting.

- Reconstruct relevant continuity.
- Produce a compact discussion outline for original prose.
- Obtain explicit outline approval before drafting.
- Use a chapter contract only when complexity warrants it.

### Longform

Use for ongoing novels and continuity-heavy, tactical, technical, mystery, or major emotional turning-point chapters.

- Load the persistent story state.
- Require a chapter contract and explicit outline approval.
- Produce a Memory Patch Proposal after applicable drafting or revision.
- Apply memory-file changes only when authorized, then validate them.

## Core Operating Law

Before writing original prose, verify the requirements for the selected mode:

```text
Do I know the relevant story state or the limits of this standalone task?
Do I know the scene goal or approved chapter contract?
Have canon-affecting ideas been routed?
Does the scene have pressure or another clear dramatic function?
Do setting and technical details change action, perception, risk, or emotion?
Is approval required in this mode, and if so, has the user given it?
```

If a required answer is no, stop before prose and ask only the blocking questions.

## Select the Stage and References

Load only the references that affect the current task. Do not load every checklist by default.

### Story Cockpit / Idea Routing

Read:

- `references/story-cockpit-workflow.md`
- `references/story-memory-ops.md` only when persistent state is involved
- `references/chapter-contract.md` only when producing a contract

Output an idea routing table, plot-thread map, state checklist, chapter contract, or export prompt. Do not design or implement the Cockpit WebUI unless the user separately asks for software work.

### Project Setup

Read:

- `references/story-foundation.md`
- `references/story-project-layout.md`
- `references/story-memory-ops.md`
- `references/voice-calibration.md`

For bounded Quick work, microfiction, or a sufficiently specified standalone short story, bypass the full Foundation intake, World Book, Character Cards, and Foundation approval. Treat the supplied prompt as the approved brief, ask only genuinely blocking questions, and keep invented facts local unless durable project constraints require a Project Brief.

For a new story without an approved Foundation, detect the strongest world, character, situation, image, theme, or mood seed and follow `references/story-foundation.md`. Ask one high-leverage question at a time, build a proposed World Book and Character Cards, and stop for Foundation approval before plot or prose. Skip redundant intake when the supplied or existing Foundation is already sufficient.

As soon as the user supplies format, scale, required or forbidden elements, project-specific immutable truths, capability ceilings, content boundaries, or other durable project requirements, create or update `templates/story-project/project-brief.md`. Preserve explicit user requirements during Foundation work; only model-proposed additions remain proposed. Keep every constraint scoped to the current project.

After Foundation approval, propose the remaining project structure and distinguish verified canon, inferred material, and unknowns.

### Planning / Outline

Always read:

- `references/outline-gate.md`
- `references/conflict-pressure.md`

Conditionally read:

- `references/continuity-check.md` for an existing story
- `references/chapter-contract.md` for standard-complex or longform work
- `references/story-architecture.md` for a complete short story, multi-chapter arc, major ending, or other structure-sensitive unit
- `references/opposition-design.md` when a person, group, institution, environment, relationship, or internal pattern persistently blocks the governing desire
- `references/cinematic-scene-texture.md` when setting or worldbuilding matters
- `references/technical-explanation-voice.md` when technical reasoning matters
- `references/genius-strategy.md` for deduction, tactics, or mastermind conflicts

Output the mode-appropriate outline or contract. In standard and longform modes, stop for explicit approval.

### Drafting / Continuing

Always read:

- `references/voice-calibration.md`
- `references/style-preservation.md`

Conditionally read continuity, conflict, dialogue, scene-texture, technical, or genius-strategy references only when those concerns are present. Draft after the mode's approval condition is satisfied, then run relevant post-draft checks.

### Revision / Review

Always read:

- `references/review-rubric.md`
- `references/style-preservation.md`

Read `references/failure-modes.md` and other specialist references only for visible or requested concerns. Give concrete findings first and always identify what to preserve. Do not force a new outline for revision-only work.

When the user asks for clarity, concision, plain language, conversational tone, naturalness, or a direct rewrite, also read `references/editorial-rewrite.md`.

### Style Polish / Anti-AI Flavour

Read:

- `references/voice-calibration.md`
- `references/editorial-rewrite.md`
- `references/style-preservation.md`

Read `references/anti-ai-flavour.md` when the user explicitly asks to remove AI flavour or the passage shows plastic, templated symptoms. For vague "humanize" requests, default to voice-preserving natural editing and do not infer new mechanisms, benefits, emotions, or claims. Always run the Final Check from `references/editorial-rewrite.md` before output. Load scene-texture or technical references only when the passage needs them. Remove plastic phrasing without sterilizing deliberate roughness, ambiguity, rhythm, or awkwardness.

### Memory Update

Use after longform drafting or revision, or when the user explicitly requests story-memory work.

Read:

- `references/story-memory-ops.md`
- `references/continuity-check.md`

Produce a Memory Patch Proposal. Do not silently modify canon.

## Style Profiles

Load a profile only when the user requests it or the project already declares it:

- `style-profiles/sheepstory-house-style.md`
- `style-profiles/zh-tw-fiction.md`
- `style-profiles/cinematic-hard-sf.md`
- `style-profiles/technical-first-person.md`
- `style-profiles/military-sf.md`
- `style-profiles/quiet-emotional-detail.md`
- `style-profiles/light-novel-dialogue.md`
- `style-profiles/dark-strategy.md`

Treat profiles as preferences, not hard rules. Current story state, supplied prose, and user instructions take priority.

## Hard Rules

### Route Canon-Affecting Ideas

Route an idea before prose when it changes canon, character state, plot direction, world rules, timeline, clues, promises, relationships, or important object state.

Assign it to a character, plot thread, chapter contract, world rule, technical beat, conflict, promise, clue, or maybe-later pile.

Allow local sensory detail, phrasing, gestures, incidental props, and other non-canon texture to be improvised without bookkeeping.

### Apply the Approval Gate Proportionately

- Quick: treat a sufficiently specific prompt as the approved brief; outline only unresolved substantial choices.
- Standard: require explicit approval of the proposed outline before original prose.
- Longform: require explicit approval of the chapter contract and outline before original prose.
- Revision, review, dialogue polish, and style polish of supplied text bypass the gate.
- For mixed revision and invention, gate only the substantial new story direction.

Explicit approval includes 「可以，開始寫」「照這個寫」「大綱 OK」「確認，動筆」 and equivalent unambiguous instructions. Generic reactions such as 「嗯嗯」「好像可以」「有趣」「繼續想」 are not approval.

### Preserve Continuity Without Inventing Canon

Classify important facts as:

- `verified`: explicitly present in prior text or approved memory
- `inferred`: logically suggested but not canon until confirmed
- `unknown`: absent from available state

Ask targeted questions when an unknown blocks the selected mode. Do not demand a full story bible for quick standalone work.

### Use Chapter Contracts Where They Pay for Themselves

Require a chapter contract in longform mode. In standard mode, use one for high-continuity, tactical, technical, mystery, or emotional turning-point chapters. Skip it in quick mode unless the user asks for one.

### Require Scene-Level Pressure or Function

Give every scene active pressure or a clear dramatic function such as intimacy, contrast, recovery, reflection, dread, setup, or consequence.

Have each beat advance at least one of action, information, relationship, emotion, risk, or state. Require irreversible change at the scene or chapter level when appropriate, not in every beat.

### Keep Worldbuilding and Technical Detail Inside the Story

Reveal setting and systems through action, objects, friction, perception, desire, or consequence unless the user intentionally requests a document, epigraph, archive, or reference format.

Include technical explanation only when it changes action, decision, risk, understanding, or emotion. For potentially harmful real-world details, keep the treatment fictional and non-operational.

### Show Intelligence Fairly

Show intelligence through observation, constrained reasoning, rejected options, tradeoffs, cost, opponent competence, fallback logic, and model updates after failure. Choose the best available plan under current constraints, not a perfect plan.

Keep decisive actions within approved capability ceilings: established skill, information, resources, time, physical limits, help, and cost. Route any new exceptional capability as a canon-affecting proposal before using it.

### Close Stories Without Mechanical Closure

For a story, arc, or governing-thread ending, answer the core dramatic question through choice and consequence. Track relevant promises by evidence and mark them paid, reframed, delayed, contradicted, retired, or intentionally unresolved. Do not use fixed payoff percentages or force every minor mystery closed. Opening-ending resonance is optional.

### Preserve What Works

During review or polish, name concrete failure modes, preserve effective voice and roughness, and keep unresolved questions only when they block a sound result.

## Cockpit Output Shapes

### Idea Routing

```markdown
## Idea Routing

| Idea | Canon impact | Belongs to | Use now/later | Risk | Next action |
|---|---|---|---|---|---|
```

### Export Prompt

```markdown
Use sheep-story in standard mode.

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

1. Select quick, standard, or longform mode.
2. Identify the task stage.
3. Route canon-affecting ideas only.
4. Load the minimum relevant references.
5. Reconstruct only the state required by the selected mode.
6. Create a contract when the mode or complexity requires it.
7. Produce and check the outline when approval is required.
8. Draft or revise after the approval condition is satisfied.
9. Run relevant post-draft checks.
10. Produce a Memory Patch Proposal when longform state changed.
11. Present only unresolved risks that matter.

## Reference Index

- `references/voice-calibration.md`
- `references/editorial-rewrite.md`
- `references/story-cockpit-workflow.md`
- `references/story-project-layout.md`
- `references/story-foundation.md`
- `references/story-architecture.md`
- `references/opposition-design.md`
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
