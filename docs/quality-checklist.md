# SheepStory Quality Checklist

Use this checklist before calling the skill release-ready.

## Skill Structure

- [ ] Root `SKILL.md` exists for environments that scan only the repository root.
- [ ] Main implementation exists at `skills/sheep-story/SKILL.md`.
- [ ] `SKILL.md` has frontmatter with `name` and `description`.
- [ ] References are colocated under `skills/sheep-story/references/`.
- [ ] Story Cockpit workflow exists at `skills/sheep-story/references/story-cockpit-workflow.md`.
- [ ] Story Foundation workflow adaptively handles world-first, character-first, situation-first, and no-seed starts.
- [ ] WebUI design exists at `docs/webui-design.md`.
- [ ] Cockpit templates exist under `templates/cockpit/`.
- [ ] Style profiles exist under `skills/sheep-story/style-profiles/`.
- [ ] Voice calibration is genre-neutral; SheepStory house taste and zh-TW behavior are opt-in profiles.
- [ ] README explains how to use the skill.
- [ ] Source map records inspirations and style boundaries.
- [ ] Templates exist for a story project.
- [ ] Project Brief isolates required, forbidden, and project-specific constraints from generic skill defaults.
- [ ] World Book and Character Card templates distinguish proposed material from approved canon.
- [ ] Character Cards define flaw/coping strategy and capability ceiling.
- [ ] Promise templates track lifecycle state and closure evidence.
- [ ] Worked examples exist for common rewrite transformations.
- [ ] Structural and static validation script exists (e.g., `tests/run_static_checks.ps1` or similar).
- [ ] Prompt specifications exist for common behavioral failure modes.

## Behavioral Gates

- [ ] A new underspecified story asks one high-leverage Foundation question at a time.
- [ ] Supplied world or character seeds are preserved instead of replaced by preferred defaults.
- [ ] A sufficient or approved Foundation bypasses redundant intake.
- [ ] World Book and Character Cards are cross-checked and approved before substantial plot or prose.
- [ ] The skill selects quick, standard, or longform mode proportionately.
- [ ] Quick mode accepts a sufficiently specific bounded prompt without unnecessary contract or memory setup.
- [ ] Standard and longform original prose retain explicit approval gates.
- [ ] The skill routes scattered ideas before planning.
- [ ] Canon-affecting ideas are routed before prose; local non-canon texture remains free to improvise.
- [ ] Ideas can be assigned to character, thread, chapter contract, clue, conflict, technical beat, promise, or maybe-later.
- [ ] Standard and longform original prose require outline approval; quick-mode exceptions remain bounded and explicit.
- [ ] The skill reconstructs continuity before prose.
- [ ] The skill asks targeted questions when continuity is missing.
- [ ] Complex chapters use a chapter contract.
- [ ] Complete stories and arcs select a structure model by function; four-act structure remains optional.
- [ ] Major endings answer the core dramatic question, show consequence, and preserve only intentional open threads.
- [ ] Opening-ending resonance remains optional rather than decorative compliance.
- [ ] Each scene has pressure or dramatic function; individual beats advance at least one meaningful dimension without requiring universal irreversibility.
- [ ] Peaceful scenes must have dramatic function.
- [ ] Scenes with setting or worldbuilding include a scene texture plan.
- [ ] Worldbuilding enters through action, objects, friction, sensory detail, POV, or desire.
- [ ] The skill rejects story-external encyclopedia lore dumps unless explicitly requested.
- [ ] Technical explanation is caused by a scene problem.
- [ ] Technical explanation changes action, decision, risk, or emotion.
- [ ] Technical explanation preserves human voice, uncertainty, and pressure.
- [ ] Genius characters require domain, observation, reasoning chain, options, cost, and blind spot.
- [ ] Competent opponents receive a red-team pass.
- [ ] Personal, institutional, environmental, relational, and internal opposition can act independently of the protagonist.
- [ ] Opposition is coherent without requiring sympathy, redemption, or a secret mastermind.
- [ ] Strategy scenes avoid perfect resources and perfect information.
- [ ] Protagonist solutions remain within approved skills, information, resources, help, time, and physical limits.
- [ ] Reviews identify failure modes.
- [ ] Reviews include what to preserve.
- [ ] Editorial rewrites select an observable mode instead of treating "humanize" as an operation.
- [ ] Editorial rewrites preserve facts, claims, stance, uncertainty, qualifications, terminology, and authorial markers.
- [ ] Concise and plain-language modes do not delete accuracy; conversational mode does not force slang or fake intimacy.
- [ ] Already effective text may remain unchanged.
- [ ] After state-changing longform drafting, the skill produces a classified Memory Patch Proposal.
- [ ] Memory files are changed only after authorization and are re-read for post-apply validation.
- [ ] Anti-AI-flavour pass preserves voice and roughness.

## Test Strategy

Run the structural validation script in `tests/` to verify plugin integrity:

```text
tests/run_static_checks.ps1
```


The files in `tests/` are prompt-based acceptance specifications. Tests 01–08 are negative controls for known failure modes; tests 09–26 are positive controls that prevent safeguards from overcorrecting and cover approval, rewriting, Foundation, architecture, opposition, capability ceilings, promises, endings, and project-only constraints. Run each prompt through a fresh skill-enabled session and compare the response with its pass criteria.
Note: This script only performs static and structural validation (e.g., checking manifest formatting, file existence, and reference links). It does NOT perform live LLM behavior testing. LLM behavior tests are manual for now.

## Cockpit Smoke Test

Prompt:

```text
Use sheep-story in Story Cockpit mode.
Here are ten scattered ideas. Route them before planning.
Do not draft prose.
```

Expected behavior:

- creates an idea routing table
- separates use-now and maybe-later ideas
- links ideas to plot threads, characters, chapter contract, or promises
- produces an export prompt only after routing

## Worked Examples

Review the transformation examples in `worked-examples/`:

```text
worked-examples/lore-dump-to-scene-texture.md
worked-examples/textbook-science-to-technical-voice.md
worked-examples/polite-dialogue-to-subtext.md
worked-examples/fake-genius-to-reasoning-chain.md
worked-examples/peaceful-scene-to-conflict-pressure.md
```

## Release Readiness

A release-ready version should include:

- [ ] Plugin manifest (`.codex-plugin/plugin.json`)
- [ ] Plugin icon (`assets/sheep-story.svg`)
- [ ] Root entrypoint (`SKILL.md`)
- [ ] Nested skill package (`skills/sheep-story/`)
- [ ] References
- [ ] Story Cockpit workflow
- [ ] WebUI design document
- [ ] Cockpit templates
- [ ] Style profiles
- [ ] Usage examples
- [ ] Story project templates
- [ ] License
- [ ] Source map / attribution notes
- [ ] Quality checklist
- [ ] Worked examples
- [ ] Tests
- [ ] Scene texture gate
- [ ] Technical explanation gate
- [ ] Review rubric
- [ ] Story memory operations
- [ ] Chapter contract
- [ ] User voice calibration

## Principle

A good fiction skill is not measured by how much prose it can generate. It is measured by how many bad drafts it prevents and how many scattered ideas it routes before they become chaos.
