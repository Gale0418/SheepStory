# SheepStory Quality Checklist

Use this checklist before calling the skill release-ready.

## Skill Structure

- [ ] Root `SKILL.md` exists for environments that scan only the repository root.
- [ ] Main implementation exists at `skills/my-novel-writing/SKILL.md`.
- [ ] `SKILL.md` has frontmatter with `name` and `description`.
- [ ] References are colocated under `skills/my-novel-writing/references/`.
- [ ] Style profiles exist under `skills/my-novel-writing/style-profiles/`.
- [ ] README explains how to use the skill.
- [ ] Source map records inspirations and style boundaries.
- [ ] Templates exist for a story project.
- [ ] Worked examples exist for common rewrite transformations.
- [ ] Tests exist for common failure modes.

## Behavioral Gates

- [ ] The skill refuses to draft prose before outline approval.
- [ ] The skill reconstructs continuity before prose.
- [ ] The skill asks targeted questions when continuity is missing.
- [ ] Complex chapters use a chapter contract.
- [ ] Each beat is checked for desire, obstacle, cost, turn, and irreversible change.
- [ ] Peaceful scenes must have dramatic function.
- [ ] Scenes with setting or worldbuilding include a scene texture plan.
- [ ] Worldbuilding enters through action, objects, friction, sensory detail, POV, or desire.
- [ ] The skill rejects story-external encyclopedia lore dumps unless explicitly requested.
- [ ] Technical explanation is caused by a scene problem.
- [ ] Technical explanation changes action, decision, risk, or emotion.
- [ ] Technical explanation preserves human voice, uncertainty, and pressure.
- [ ] Genius characters require domain, observation, reasoning chain, options, cost, and blind spot.
- [ ] Competent opponents receive a red-team pass.
- [ ] Strategy scenes avoid perfect resources and perfect information.
- [ ] Reviews identify failure modes.
- [ ] Reviews include what to preserve.
- [ ] After drafting, the skill lists memory updates needed.
- [ ] Anti-AI-flavour pass preserves voice and roughness.

## Test Prompts

Run the test files in `tests/`:

```text
tests/01-outline-gate.md
tests/02-continuity-missing.md
tests/03-too-peaceful.md
tests/04-fake-genius.md
tests/05-lore-dump.md
tests/06-technical-decoration.md
tests/07-dialogue-exposition.md
tests/08-over-polish.md
```

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

- [ ] Root entrypoint
- [ ] Nested skill package
- [ ] References
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

A good fiction skill is not measured by how much prose it can generate. It is measured by how many bad drafts it prevents.
