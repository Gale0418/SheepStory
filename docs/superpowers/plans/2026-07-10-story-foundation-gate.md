# SheepStory Story Foundation Gate Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a generic adaptive Story Foundation Gate that produces an approved World Book and Character Cards before substantial new-story planning.

**Architecture:** Keep the canonical Skill as the trigger/router, store the decision workflow in `references/story-foundation.md`, and provide reusable World Book and Character Card templates. Extend PowerShell regression checks and prompt acceptance specifications before editing guidance.

**Tech Stack:** Markdown Agent Skills, Markdown templates, PowerShell 7 validation, Codex skill and plugin validators.

## Global Constraints

- Preserve the existing dirty worktree; do not commit or publish.
- Ask one high-leverage question at a time.
- Never ask for information already supplied.
- Keep all world, genre, place, technology, magic, relationship, and plot defaults neutral.
- Do not draft prose during Story Foundation setup.

---

### Task 1: Add failing Foundation regression checks

**Files:**
- Modify: `tests/run_regression_checks.ps1`
- Create: `tests/18-vague-new-story.md`
- Create: `tests/19-world-first-seed.md`
- Create: `tests/20-character-first-seed.md`
- Create: `tests/21-specified-foundation.md`

**Interfaces:**
- Consumes: canonical Skill, Foundation reference, World Book template, Character Card template.
- Produces: failures until adaptive routing, canon classification, no-prose behavior, and genericity boundaries exist.

- [ ] Require the Foundation reference and templates, adaptive seed paths, one-question rule, canon states, and no-prose gate.
- [ ] Reject project-specific city and lost-technology defaults from the Foundation reference.
- [ ] Run `pwsh -NoLogo -NoProfile -File tests/run_regression_checks.ps1` and confirm the missing Foundation behavior fails.
- [ ] Add four behavioral specifications covering vague, world-first, character-first, and fully specified seeds.

### Task 2: Implement Story Foundation guidance and templates

**Files:**
- Create: `skills/sheep-story/references/story-foundation.md`
- Create: `templates/story-project/worldbuilding/world-book.md`
- Modify: `templates/story-project/characters/_template.md`
- Modify: `skills/sheep-story/SKILL.md`
- Modify: `skills/sheep-story/references/story-project-layout.md`

**Interfaces:**
- Consumes: any world, character, situation, image, theme, or mood seed supplied by the user.
- Produces: a proposed and approved Story Foundation with classified World Book and Character Cards.

- [ ] Write trigger, adaptive entry paths, progressive questioning, World Book, Character Cards, cross-check, approval boundary, and genericity rules.
- [ ] Add reusable templates without genre-specific examples.
- [ ] Route new Project Setup through the Foundation reference while preserving Quick and existing-project exceptions.
- [ ] Run regression and static checks until both pass.

### Task 3: Forward-test and validate

**Files:**
- Modify: `.codex-plugin/plugin.json` only through the cachebuster helper.

**Interfaces:**
- Consumes: the baseline vague new-story prompt and one fully specified counterexample.
- Produces: proportional questions, no redundant intake, no prose, and no unapproved canon.

- [ ] Run fresh-agent scenarios with the updated Skill.
- [ ] Run static, regression, Skill, and Plugin validation.
- [ ] Scan the Foundation reference for project-specific defaults and trailing spaces.
- [ ] Update the plugin cachebuster without installing or publishing.
