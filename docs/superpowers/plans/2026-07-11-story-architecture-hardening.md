# Story Architecture Hardening Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add conditional architecture, opposition, capability-limit, project-constraint, promise-lifecycle, and ending contracts to SheepStory.

**Architecture:** Keep the canonical skill as a compact router and put each concern in one focused reference or template. Extend the existing contract and project-layout interfaces instead of introducing a second planning workflow.

**Tech Stack:** Markdown skill instructions and templates; PowerShell static/regression checks; bundled Codex skill/plugin validators.

## Global Constraints

- Four-act structure is optional and selected by story needs.
- Project-specific constraints stay in `project-brief.md` and never become generic defaults.
- Do not add fixed word-count pacing, recurring-climax, dialogue-ratio, or payoff-percentage requirements.
- Preserve Quick/Standard/Longform behavior and explicit approval gates.
- Use minimal safe edits; do not commit, install, or publish.

---

### Task 1: Add failing architecture acceptance coverage

**Files:**
- Create: `tests/22-optional-structure.md`
- Create: `tests/23-coherent-opposition.md`
- Create: `tests/24-capability-ceiling.md`
- Create: `tests/25-promise-and-ending.md`
- Create: `tests/26-project-only-constraint.md`
- Modify: `tests/run_regression_checks.ps1`
- Modify: `tests/run_static_checks.ps1`

**Interfaces:**
- Consumes: existing positive-control specification format and PowerShell failure collector.
- Produces: checks for tests 22-26 and required architecture files/phrases.

- [ ] **Step 1: Write tests 22-26 as user prompt, expected behavior, and failure signs.**
- [ ] **Step 2: Add static path checks and regression assertions for the new contracts.**
- [ ] **Step 3: Run both PowerShell suites and verify they fail only because the new implementation is absent.**

### Task 2: Add project, character, and opposition contracts

**Files:**
- Create: `templates/story-project/project-brief.md`
- Create: `skills/sheep-story/references/opposition-design.md`
- Modify: `templates/story-project/characters/_template.md`
- Modify: `skills/sheep-story/references/story-project-layout.md`

**Interfaces:**
- Consumes: approved Story Foundation, verified/inferred/unknown canon labels, existing Character Card.
- Produces: immutable project constraints, capability ceilings, and an Opposition Card usable by planning.

- [ ] **Step 1: Add Project Brief fields for required/forbidden elements, immutable truths, ceilings, boundaries, and unknowns.**
- [ ] **Step 2: Add flaw/coping and capability-ceiling fields to Character Cards.**
- [ ] **Step 3: Add opposition types and a compact Opposition Card with independent action and rational constraints.**
- [ ] **Step 4: Update project layout to load the Project Brief before story memory.**

### Task 3: Add architecture, promise, and ending contracts

**Files:**
- Create: `skills/sheep-story/references/story-architecture.md`
- Create: `templates/story-project/continuity/promises/_template.md`
- Modify: `skills/sheep-story/references/chapter-contract.md`
- Modify: `templates/cockpit/chapter-contract.md`

**Interfaces:**
- Consumes: Project Brief, Story Foundation, Character Cards, open questions/promises.
- Produces: selected structure model, causal turn map, promise lifecycle, and ending acceptance criteria.

- [ ] **Step 1: Define when structure selection pays for itself and list non-mandatory models.**
- [ ] **Step 2: Define causal turns and an Ending Contract without numeric pacing quotas.**
- [ ] **Step 3: Add the promise lifecycle template and closure evidence.**
- [ ] **Step 4: Add relevant promise changes and optional ending fields to both chapter-contract forms.**

### Task 4: Route and document the new components

**Files:**
- Modify: `skills/sheep-story/SKILL.md`
- Modify: `SKILL.md`
- Modify: `README.md`
- Modify: `docs/quality-checklist.md`

**Interfaces:**
- Consumes: stage selection and minimum-reference loading rules.
- Produces: conditional routing to Project Brief, Story Architecture, and Opposition Design.

- [ ] **Step 1: Route setup and planning to only the relevant new references.**
- [ ] **Step 2: Extend compatibility routing and reference index.**
- [ ] **Step 3: Document optional structure and project-specific constraint isolation.**

### Task 5: Verify and review

**Files:**
- Modify only files implicated by failed checks or actionable review findings.

**Interfaces:**
- Consumes: complete patch and tests 22-26.
- Produces: passing validation evidence and an independent behavior/review result.

- [ ] **Step 1: Run static and regression checks; expect both to pass.**
- [ ] **Step 2: Run the bundled skill and plugin validators; expect both to pass.**
- [ ] **Step 3: Run targeted genericity and trailing-whitespace scans; expect no project-example leakage.**
- [ ] **Step 4: Ask a fresh subagent to exercise the updated skill and another reviewer to inspect the diff.**
- [ ] **Step 5: Apply only actionable findings, rerun the full verification set, and update the plugin cachebuster.**

## Self-Review

- Spec coverage: every design component maps to Tasks 1-4 and final evidence maps to Task 5.
- Placeholder scan: no TBD, TODO, or unspecified implementation step remains.
- Interface consistency: Project Brief feeds Architecture and Opposition; both feed outline/chapter contracts; promises feed the Ending Contract.
