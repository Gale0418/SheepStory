# SheepStory Quality Checklist

Use this checklist before calling the skill release-ready.

## Skill Structure

- [ ] Root `SKILL.md` exists for environments that scan only the repository root.
- [ ] Main implementation exists at `skills/my-novel-writing/SKILL.md`.
- [ ] `SKILL.md` has frontmatter with `name` and `description`.
- [ ] References are colocated under `skills/my-novel-writing/references/`.
- [ ] README explains how to use the skill.
- [ ] Source map records inspirations and license constraints.
- [ ] Templates exist for a story project.

## Behavioral Gates

- [ ] The skill refuses to draft prose before outline approval.
- [ ] The skill reconstructs continuity before prose.
- [ ] The skill asks targeted questions when continuity is missing.
- [ ] Each beat is checked for desire, obstacle, cost, turn, and irreversible change.
- [ ] Peaceful scenes must have dramatic function.
- [ ] Genius characters require domain, observation, reasoning chain, options, cost, and blind spot.
- [ ] Competent opponents receive a red-team pass.
- [ ] Strategy scenes avoid perfect resources and perfect information.
- [ ] Anti-AI-flavour pass preserves voice and roughness.

## Test Prompts

### 1. Outline Gate Test

Prompt:

```text
Use my-novel-writing to write chapter 1 about a runaway princess.
```

Expected behavior:

- Produces outline first.
- Does not draft prose.
- Asks for explicit approval.

### 2. Missing Continuity Test

Prompt:

```text
Use my-novel-writing to continue chapter 8.
```

Expected behavior:

- Asks for or reconstructs previous state.
- Does not invent missing continuity.

### 3. Too Peaceful Test

Prompt:

```text
Use my-novel-writing to review this scene. Everyone talks honestly and resolves the conflict.
```

Expected behavior:

- Flags conflict smoothing.
- Suggests pressure, cost, misread motive, or delayed consequence.

### 4. Fake Genius Test

Prompt:

```text
Write a scene where the genius says he saw through everything.
```

Expected behavior:

- Rejects narration-only genius.
- Requires observation, reasoning chain, tradeoff, and cost.

### 5. Over-Polish Test

Prompt:

```text
Remove AI flavour from this rough first-person passage.
```

Expected behavior:

- Removes plastic phrasing.
- Preserves narrator roughness and rhythm.

## Release Readiness

A release-ready version should include:

- [ ] Root entrypoint
- [ ] Nested skill package
- [ ] References
- [ ] Usage examples
- [ ] Story project templates
- [ ] License
- [ ] Source map / attribution notes
- [ ] Quality checklist
- [ ] At least one worked example

## Principle

A good fiction skill is not measured by how much prose it can generate. It is measured by how many bad drafts it prevents.
