# SheepStory Skill Hardening Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make SheepStory consistently discoverable, proportionate to task size, style-neutral by default, and protected by stronger regression checks.

**Architecture:** Keep one canonical `skills/sheep-story` package, a thin root compatibility entrypoint, stage-routed references, optional style profiles, and PowerShell validation scripts. Preserve existing behavior except where the design explicitly relaxes over-broad rules.

**Tech Stack:** Markdown Agent Skills, Codex plugin JSON, PowerShell 7 static checks, Python Codex validators.

## Global Constraints

- Preserve the user's existing uncommitted work and line-ending choices.
- Use no external runtime dependencies.
- Keep the canonical `SKILL.md` below 500 lines.
- Do not build the Cockpit WebUI in this change.
- Do not commit or publish without explicit user authorization.

---

### Task 1: Add regression gates

**Files:**
- Create: `tests/run_regression_checks.ps1`
- Modify: `tests/run_static_checks.ps1`

**Interfaces:**
- Consumes: plugin manifest, canonical skill, references, style profiles.
- Produces: exit code `0` only when naming and hardening invariants hold.

- [ ] Write checks for canonical `skills/sheep-story`, skill name, starter prompt, modes, scene-level pressure, generic calibration, and memory patch semantics.
- [ ] Run `pwsh -NoLogo -NoProfile -File tests/run_regression_checks.ps1` and verify it fails against the current structure.
- [ ] Extend static path validation to cover inline-code Markdown path lists.

### Task 2: Unify skill identity and mode routing

**Files:**
- Rename: legacy `skills/my-novel-writing/` to canonical `skills/sheep-story/`
- Modify: `skills/sheep-story/SKILL.md`
- Modify: `SKILL.md`
- Modify: `.codex-plugin/plugin.json`
- Modify: textual references under `README.md`, `docs/`, `examples/`, and `templates/`

**Interfaces:**
- Consumes: prompts using the SheepStory brand.
- Produces: one callable skill identifier, `sheep-story`.

- [ ] Replace legacy `my-novel-writing` paths and invocation text with `sheep-story`.
- [ ] Add quick, standard, and longform selection rules.
- [ ] Define canon-affecting idea routing and scene-level pressure.
- [ ] Run the regression script and confirm the identity and mode checks pass.

### Task 3: Separate calibration from house style

**Files:**
- Modify: `skills/sheep-story/references/voice-calibration.md`
- Create: `skills/sheep-story/style-profiles/sheepstory-house-style.md`
- Modify: `skills/sheep-story/SKILL.md`

**Interfaces:**
- Consumes: user samples and explicit style requests.
- Produces: neutral calibration by default and optional SheepStory house style.

- [ ] Replace fixed genre taste in voice calibration with a sample-driven calibration workflow.
- [ ] Move hard-SF and military preferences to the optional house profile.
- [ ] Run regression checks and verify calibration neutrality.

### Task 4: Make memory updates transactional

**Files:**
- Modify: `skills/sheep-story/references/story-memory-ops.md`
- Modify: `skills/sheep-story/references/story-cockpit-workflow.md`
- Modify: `skills/sheep-story/SKILL.md`

**Interfaces:**
- Consumes: draft state and existing canon.
- Produces: `Memory Patch Proposal`, optional authorized apply, and post-apply validation.

- [ ] Document proposal, classification, authorization, apply, and validation phases.
- [ ] Resolve chapter-contract policy against the three operating modes.
- [ ] Run regression checks and confirm memory and contract invariants.

### Task 5: Add positive controls and complete validation

**Files:**
- Create: `tests/09-quiet-scene.md`
- Create: `tests/10-direct-dialogue.md`
- Create: `tests/11-quick-mode.md`
- Create: `tests/12-approved-outline.md`
- Create: `tests/13-mixed-revision.md`
- Create: `tests/14-document-framing.md`
- Modify: `docs/quality-checklist.md`

**Interfaces:**
- Consumes: manual fresh-session behavior evaluation.
- Produces: balanced negative and positive acceptance specifications.

- [ ] Add the six positive-control prompt specifications with explicit pass and rejection criteria.
- [ ] Run `pwsh -NoLogo -NoProfile -File tests/run_static_checks.ps1`.
- [ ] Run `pwsh -NoLogo -NoProfile -File tests/run_regression_checks.ps1`.
- [ ] Run the Codex skill and plugin validators.
- [ ] Inspect `git diff --check`, changed paths, and final rule consistency.
