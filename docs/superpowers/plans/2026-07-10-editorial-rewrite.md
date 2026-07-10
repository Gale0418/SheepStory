# SheepStory Editorial Rewrite Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a routed editorial rewrite reference with five distinct modes and a strict semantic-preservation contract.

**Architecture:** Keep the canonical `SKILL.md` as a concise router and place detailed editing behavior in `references/editorial-rewrite.md`. Extend existing PowerShell regression checks and prompt acceptance specifications before changing skill guidance.

**Tech Stack:** Markdown Agent Skills, PowerShell 7 validation, Codex skill and plugin validators.

## Global Constraints

- Preserve the existing dirty worktree and do not commit or publish.
- Do not auto-trigger SheepStory for generic non-fiction.
- Do not claim to detect AI authorship or evade AI detectors.
- Preserve facts, claims, stance, uncertainty, qualifications, terminology, and authorial markers.

---

### Task 1: Add failing editorial regression checks

**Files:**
- Modify: `tests/run_regression_checks.ps1`
- Create: `tests/15-claim-preservation.md`
- Create: `tests/16-adult-plain-language.md`
- Create: `tests/17-minimal-no-op.md`

**Interfaces:**
- Consumes: canonical Skill routing and editorial reference content.
- Produces: failures when the reference, five modes, or preservation rules are absent.

- [ ] Require `references/editorial-rewrite.md`, five named modes, semantic-preservation language, and a canonical Skill route.
- [ ] Run `pwsh -NoLogo -NoProfile -File tests/run_regression_checks.ps1` and confirm failure because the reference and route do not exist.
- [ ] Add three prompt specifications with explicit good behavior, rejected behavior, and pass criteria.

### Task 2: Implement editorial rewrite guidance

**Files:**
- Create: `skills/sheep-story/references/editorial-rewrite.md`
- Modify: `skills/sheep-story/SKILL.md`
- Modify: `skills/sheep-story/references/anti-ai-flavour.md`

**Interfaces:**
- Consumes: source text, requested editing goal, available audience/purpose/tone/locale evidence.
- Produces: revised text using one or more explicitly selected modes without semantic expansion.

- [ ] Write the rewrite contract, evidence intake, five-mode table, output contract, and common mistakes.
- [ ] Route general clarity, concision, naturalness, conversational, and voice-preserving edits from the canonical Skill.
- [ ] Keep anti-AI guidance focused on symptom detection and delegate general transformation to the new reference.
- [ ] Run the regression and static checks until both pass.

### Task 3: Forward-test and validate

**Files:**
- Modify: `.codex-plugin/plugin.json` only through the cachebuster helper.

**Interfaces:**
- Consumes: the same baseline rewrite prompt used before implementation.
- Produces: a rewrite that improves flow without adding unsupported claims or implications.

- [ ] Run a fresh-agent scenario with the updated skill and compare it with the recorded baseline.
- [ ] Run static, regression, skill, and plugin validators.
- [ ] Scan for broken paths, old overlapping labels, and trailing spaces.
- [ ] Update the plugin cachebuster without installing or publishing.
