# SheepStory Documentation Map

## Start Here

Use this index to choose the right design document without loading every file.

| Document | Scope | Use it when |
|---|---|---|
| `character-story-engine-map.md` | Full character-card-to-story pipeline | You need the broad map: card fields, traits, cognition, dynamics, memory, contrast, misunderstanding, embodiment, tone, and coherence |
| `character-system-architecture.md` | Internal character simulation architecture | You are working mainly on appraisal, emotional dynamics, memory, beliefs, relationships, Theory of Mind, or embodiment |
| `character-card-research-method.md` | Public-card and player-review research method | You are auditing a card, attributing behavior to prompt fields, weighting reviews, or designing a controlled comparison |
| `social-cognitive-character-benchmarks.md` | Named analytical benchmarks | You need examples of context readers, intent readers, evidence observers, social failures, masking, and hidden operators |
| `fiction-skill-design.md` | Overall SheepStory skill design | You need the original design goals and broad workflow rationale |
| `quality-checklist.md` | Quality and release checks | You need a general review checklist |
| `webui-design.md` | Interface design notes | You are explicitly working on the optional UI concept |
| `superpowers/` | Historical plans and specifications | You need implementation history or archived design decisions |

## Runtime Reference Families

Runtime guidance lives under `skills/sheep-story/references/`.

### Character Initialization and Expression

- `character-card-engineering.md` — greetings, examples, user role, field hygiene, player reviews, regression probes
- `trait-expression-library.md` — everyday conversational personality
- `contrast-and-dissonance.md` — gap appeal, words/actions/body, hypocrisy, self-deception, indirect affection
- `social-cognitive-profile.md` — intelligence, observation, empathy, charisma, tact, calibration, masking

### Character Change and Knowledge

- `character-dynamics.md` — appraisal, emotion, pressure, coping, relationship metabolism
- `character-memory-belief.md` — truth, knowledge, memory, belief, suspicion, pretense, Theory of Mind
- `misunderstanding-tragedy.md` — divergent models, repair windows, reinforcing evidence, irreversible thresholds
- `story-memory-ops.md` — authorized persistent-state updates

### Scene Performance and Story Control

- `dialogue-checklist.md` — intention, subtext, social strategy, contrast, belief, and response
- `embodied-expression.md` — face, gaze, breath, posture, gesture, movement, distance, touch, and objects
- `reader-promise-and-tone.md` — emotional contract, tonal hazards, recovery, surprise, and ending range
- `narrative-coherence-gate.md` — long-horizon persona, knowledge, relationship, spatial, temporal, and tonal consistency

### Structure, World, and Review

- `story-foundation.md`
- `story-project-layout.md`
- `story-architecture.md`
- `outline-gate.md`
- `chapter-contract.md`
- `conflict-pressure.md`
- `opposition-design.md`
- `continuity-check.md`
- `review-rubric.md`

## Templates

### Story Project

- `templates/story-project/project-brief.md`
- `templates/story-project/characters/_template.md`
- `templates/story-project/continuity/state.md`
- `templates/story-project/continuity/promises/_template.md`

### Cockpit / Analysis

- `templates/cockpit/character-card-audit.md`
- `templates/cockpit/misunderstanding-ledger.md`
- `templates/cockpit/reader-promise.md`
- `templates/cockpit/chapter-contract.md`
- `templates/cockpit/authoring-lab.md`
- `templates/cockpit/story-state-ledger.md`

## Fast Routing

```text
"Why does this bot repeat or ignore changed state?"
→ character-card-engineering.md

"This stern character is secretly adorable."
→ contrast-and-dissonance.md

"She says she does not care but repairs his equipment."
→ contrast-and-dissonance.md + embodied-expression.md

"Everyone acts rationally but misunderstands each other into disaster."
→ misunderstanding-tragedy.md + character-memory-belief.md

"The story begins cheerful but the audience can smell doom."
→ reader-promise-and-tone.md

"All characters sound like the same assistant."
→ trait-expression-library.md + dialogue-checklist.md

"A genius knows things they could not know."
→ social-cognitive-profile.md + character-memory-belief.md

"The story forgot who is where, who knows what, or what grief still matters."
→ narrative-coherence-gate.md + continuity-check.md
```

## Principle

Load the smallest reference family that explains the problem. SheepStory should be deep when the story requires depth, not because every available checklist wants attention.