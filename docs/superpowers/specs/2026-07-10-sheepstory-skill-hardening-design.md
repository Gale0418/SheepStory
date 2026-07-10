# SheepStory Skill Hardening Design

## Goal

Make SheepStory reliably discoverable as `sheep-story`, keep its long-form safeguards, and prevent those safeguards from over-constraining short or intentionally quiet fiction work.

## Scope

- Use one canonical plugin skill name: `sheep-story`.
- Keep the root `SKILL.md` only as a compatibility entrypoint.
- Add `quick`, `standard`, and `longform` operating modes.
- Route only canon-affecting ideas; allow local prose texture without bookkeeping.
- Require pressure and irreversible change at scene or chapter level, not every beat.
- Make voice calibration generic and move the current hard-SF preferences into an optional profile.
- Define memory updates as a proposal/apply/validate transaction.
- Add positive-control acceptance specifications and stronger structural regression checks.

## Architecture

The canonical skill lives at `skills/sheep-story/`. Its `SKILL.md` remains the routing layer and loads only stage-relevant references. Detailed craft guidance stays in `references/`, while user- or project-specific taste lives in `style-profiles/`.

The root `SKILL.md` mirrors only the compatibility-critical operating rules and points to the canonical skill. Tests enforce canonical naming, rule consistency, path validity, mode availability, optional style behavior, and memory transaction semantics.

## Operating Modes

### Quick

Use for short standalone scenes, microfiction, narrow rewrites, dialogue polish, and supplied prose. Do not require a chapter contract or persistent memory files. Preserve the outline gate only when the task introduces substantial original story direction.

### Standard

Use by default for chapter or scene planning and drafting. Reconstruct relevant continuity, produce a compact outline, obtain explicit approval, then draft.

### Longform

Use for ongoing novels and continuity-heavy, tactical, technical, or major emotional turning-point chapters. Require a chapter contract and use the two-phase memory update flow.

Explicit user instructions may select a mode. Otherwise choose the lightest mode that safely handles the task and state the choice briefly.

## Rule Clarifications

- An idea requires routing only when it changes canon, character state, plot direction, world rules, timeline, promises, clues, or important object state.
- Local sensory detail, phrasing, gestures, and non-canon texture may be improvised during prose work.
- Every scene needs active pressure or dramatic function. Individual beats need to advance at least one of action, information, relationship, emotion, risk, or state; they do not each need an irreversible turn.
- Quiet scenes are valid when they create intimacy, contrast, recovery, dread, setup, reflection, or another identifiable story function.
- Chapter contracts are mandatory in longform mode and conditional in standard mode.

## Voice Calibration

`references/voice-calibration.md` teaches how to infer and preserve voice from user samples and explicit preferences. It must not assume hard-SF, military-SF, first person, dry humor, or technical exposition.

The previous SheepStory house taste moves to `style-profiles/sheepstory-house-style.md` and is loaded only when the user requests it or the project already declares it.

## Memory Transaction

1. Produce a `Memory Patch Proposal` after applicable longform drafting or revision.
2. Mark each fact `verified`, `inferred`, or `unknown`.
3. Do not silently turn inferred facts into canon.
4. Apply file changes only when the user requested file updates or an established story-project workflow authorizes them.
5. Re-read the affected files and run a contradiction check after applying.
6. On conflict, preserve existing canon and ask whether to revise the draft or explicitly retcon.

## Testing

- A regression script must fail against the pre-hardening structure and pass after implementation.
- Static validation must check referenced local Markdown paths even when written as inline-code list items.
- Positive-control prompt specifications cover quiet scenes, direct dialogue, small tasks, prior outline approval, mixed revision/original prose, and intentional document framing.
- Existing eight negative-control specifications remain valid.
- Plugin validation and Codex skill validation must pass.

## Non-Goals

- Building the SheepStory Cockpit WebUI.
- Adding a live model-evaluation service or external API dependency.
- Rewriting existing worked examples unrelated to these rule changes.
- Committing or publishing the current dirty worktree.
