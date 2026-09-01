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
- flattening characters into static trait labels or a single charisma/intelligence stat
- resetting emotion, relationships, belief, or memory between scenes
- confusing world truth with what a character knows, believes, remembers, or suspects
- decorating every line with generic gestures instead of meaningful embodiment
- treating character-card fields as interchangeable storage
- turning gap appeal or indirect affection into an automatic opposite-language decoder
- preserving misunderstanding plots through selective stupidity or ignored clarification
- stacking darkness, suffering, surrealism, and twists without a reader promise or recovery logic

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
Do active characters have only the knowledge, memory, belief, and physical access they should have?
If contrast or misunderstanding drives the scene, are the underlying signals and beliefs causally supported?
If tone materially changes, does it remain inside the approved reader promise or a deliberately prepared subversion?
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

For reader simulation, non-canon character experiments, alternate takes, or bridge writing, also read `references/authoring-laboratory.md`. Keep all experiment output sandbox-only and record evidence, dissent, provenance, and an approval destination. For claim, event, promise, or editorial tracking, read `references/story-state-ledgers.md`; use the existing canonical files as the single truth source.

For pacing or reveal advice, read `references/pacing-reveal-and-extensions.md`. For import, recovery, snapshot, rollback, or run-trace questions, read `references/project-recovery-and-runs.md`. For character-card field audits, player-review attribution, or external card imports, read `references/character-card-engineering.md`. These are Markdown-only contracts and do not authorize a database, WebUI, runtime, parser, automatic canon mutation, or automated scraping pipeline.

Output an idea routing table, plot-thread map, state checklist, chapter contract, card audit, misunderstanding ledger, reader-promise sheet, or export prompt. Do not design or implement the Cockpit WebUI unless the user separately asks for software work.

### Project Setup

Read:

- `references/story-foundation.md`
- `references/story-project-layout.md`
- `references/story-memory-ops.md`
- `references/voice-calibration.md`

Conditionally read:

- `references/reader-promise-and-tone.md` when genre experience, darkness, hope, humor, surprise, or ending range is a durable project requirement
- `references/character-card-engineering.md` when the project is interactive, role-play oriented, imported from a character card, or intended for character-card export
- `references/contrast-and-dissonance.md` when a core character premise depends on gap appeal, public-private contrast, or words-actions conflict

For bounded Quick work, microfiction, or a sufficiently specified standalone short story, bypass the full Foundation intake, World Book, Character Cards, and Foundation approval. Treat the supplied prompt as the approved brief, ask only genuinely blocking questions, and keep invented facts local unless durable project constraints require a Project Brief.

For a new story without an approved Foundation, detect the strongest world, character, situation, image, theme, or mood seed and follow `references/story-foundation.md`. Ask one high-leverage question at a time, build a proposed World Book and Character Cards, and stop for Foundation approval before plot or prose. Skip redundant intake when the supplied or existing Foundation is already sufficient.

As soon as the user supplies format, scale, required or forbidden elements, project-specific immutable truths, capability ceilings, content boundaries, reader-promise constraints, user-role assumptions, or other durable project requirements, create or update `templates/story-project/project-brief.md`. Preserve explicit user requirements during Foundation work; only model-proposed additions remain proposed. Keep every constraint scoped to the current project.

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
- `references/character-card-engineering.md` for greeting, opening-state, user-role, field-placement, example-dialogue, or card-robustness planning
- `references/trait-expression-library.md` when standout personality, humor, talkativeness, awkwardness, warmth, bluntness, formality, or conversational habits materially distinguish a character
- `references/social-cognitive-profile.md` when intelligence, observation, social skill, charisma, empathy, masking, hidden agenda, or character misreading materially affects the scene
- `references/contrast-and-dissonance.md` when gap appeal, public-private contrast, indirect affection, hypocrisy, self-deception, or words-actions-body divergence affects the scene
- `references/character-dynamics.md` when event appraisal, emotional continuity, coping, accumulated pressure, or relationship evolution affects the story
- `references/character-memory-belief.md` when memory retrieval, knowledge boundaries, belief, suspicion, secrets, misunderstanding, or Theory of Mind affects the scene
- `references/misunderstanding-tragedy.md` when divergent beliefs, failed repair, dramatic irony, or a partial-information cascade drives conflict
- `references/embodied-expression.md` when facial expression, gaze, breath, posture, gesture, movement, distance, touch, object interaction, or body-language evidence matters
- `references/reader-promise-and-tone.md` when tonal escalation, darkness, hope, humor, recovery, surprise, or an influence stack affects the outline
- `references/narrative-coherence-gate.md` for long-horizon, multi-character, reveal-dense, or spatially complex planning where persona drift, knowledge leakage, Role-Location-Plot mismatch, or reader-promise drift is plausible

Output the mode-appropriate outline or contract. In standard and longform modes, stop for explicit approval.

### Drafting / Continuing

Always read:

- `references/voice-calibration.md`
- `references/style-preservation.md`

Conditionally read continuity, conflict, dialogue, scene-texture, technical, genius-strategy, card-engineering, trait-expression, social-cognitive, contrast, character-dynamics, character-memory-belief, misunderstanding, embodied-expression, reader-promise, or coherence references only when those concerns are present.

Read `references/character-card-engineering.md` when drafting a greeting, alternate opening, card examples, user-role interaction, or export-ready character-card material. Read `references/trait-expression-library.md` when a character needs a recognizable social or conversational signature without forcing every trait into every line. Read `references/social-cognitive-profile.md` when dialogue or action depends on uneven intelligence/social abilities, observation, social masks, deception, hidden agendas, or mask-drop behavior. Read `references/contrast-and-dissonance.md` when spoken claims, actions, body, self-image, or private motive deliberately diverge. Read `references/character-dynamics.md` when recent events or accumulated pressure should change appraisal, emotion, coping, or relationships. Read `references/character-memory-belief.md` when past events, secrets, character-specific knowledge, mistaken belief, memory, or Theory-of-Mind lookahead changes the response. Read `references/misunderstanding-tragedy.md` when characters act from divergent models or when a repair window opens or closes. Read `references/embodied-expression.md` when the body, gaze, breath, posture, gesture, spatial distance, or object handling carries subtext or consequence. Read `references/reader-promise-and-tone.md` when the scene changes the expected emotional contract, intensity, respite, or genre signal. Read `references/narrative-coherence-gate.md` for complex long-running scenes at high risk of drift or knowledge/spatial contradiction. Read `references/vocal-impact.md` when battle cries, invocations, screams, repeated names, broken speech, crowd responses, or other low-semantic vocal lines carry the moment.

Draft after the mode's approval condition is satisfied, then run relevant post-draft checks.

### Revision / Review

Always read:

- `references/review-rubric.md`
- `references/style-preservation.md`

Read `references/failure-modes.md` and other specialist references only for visible or requested concerns. Give concrete findings first and always identify what to preserve. Do not force a new outline for revision-only work.

When reviewing an AI character card, greeting imprint, field pollution, user-role contamination, goal lock, example-script leakage, entity aliasing, threat loops, or player-review evidence, read `references/character-card-engineering.md`.

When reviewing characters who all sound alike, a trait that has become a repetitive gimmick, humor with poor timing, flat warmth, generic awkwardness, talkativeness, bluntness, or other conversational personality issues, read `references/trait-expression-library.md`.

When reviewing inconsistent characterization, social miscalibration, fake genius, unearned deduction, masking, hidden agendas, or reveal behavior, read `references/social-cognitive-profile.md`.

When reviewing arbitrary contradiction, mechanical tsundere translation, unearned gap appeal, hypocrisy confusion, words-actions mismatch, self-deception, or public-private contrast, read `references/contrast-and-dissonance.md`.

When reviewing emotional reset, unexplained mood changes, unearned relationship shifts, repetitive defenses, or events that should still matter psychologically, read `references/character-dynamics.md`.

When reviewing knowledge leakage, impossible callbacks, mistaken beliefs, secrets, memory use, unreliable recollection, or character mental models, read `references/character-memory-belief.md`.

When reviewing misunderstanding plots, selective stupidity, coincidence barricades, endless distrust, ignored clarification, weak repair windows, or missing aftermath, read `references/misunderstanding-tragedy.md`.

When reviewing repetitive action beats, body-language clichés, accidental text/voice/body mismatch, or physically impossible gestures and movement, read `references/embodied-expression.md`.

When reviewing tonal bait-and-switch, unprocessed suffering, darkness without choice, humor that erases harm, absent respite, influence-stack confusion, or ending-contract failure, read `references/reader-promise-and-tone.md`.

For long-form or dense multi-character review, read `references/narrative-coherence-gate.md`, especially around midpoint / act transitions, time skips, reunions, battles, major identity or secret reveals, and tonal turns.

When the user asks for clarity, concision, plain language, conversational tone, naturalness, or a direct rewrite, also read `references/editorial-rewrite.md`.

When a review might mistake low informational content for useless dialogue, read `references/vocal-impact.md`. Judge sound, breath, rhythm, timing, character fit, and consequence before cutting the line.

When review includes reader evidence, competing interpretations, state claims, public-card ratings, player comments, pacing/reveal advice, or a branch, load only the applicable laboratory, ledger, card-engineering, or advisory reference. Treat consensus, parser output, stars, downloads, and reviews as evidence to evaluate, never as canon, causal proof, or proof of authorial intent.

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
- `references/character-dynamics.md` when psychological or relationship state changed
- `references/character-memory-belief.md` when knowledge, belief, memory, suspicion, or secret state changed
- `references/misunderstanding-tragedy.md` when an active belief divergence, repair window, or irreversible threshold changed
- `references/reader-promise-and-tone.md` only when a durable tonal contract or unresolved consequence changed

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

Route an idea before prose when it changes canon, character state, plot direction, world rules, timeline, clues, promises, relationships, important object state, user-role contract, or durable reader promise.

Assign it to a character, plot thread, chapter contract, world rule, technical beat, conflict, promise, clue, misunderstanding ledger, reader-promise sheet, or maybe-later pile.

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

### Preserve Epistemic Layers

Do not collapse:

```text
world truth
character observation
character knowledge
character belief
character memory
current inference
publicly displayed knowledge
reader knowledge
```

A mistaken belief can be verified as a character fact without becoming world truth. Reader or narrator knowledge does not automatically belong to the cast.

### Let Psychology Evolve Without Reset or Drift

Stable identity does not require identical reactions. Distinguish long-term identity, mid-term accumulated pressure, and short-term affect. Let meaningful events update appraisal, emotion, coping, relationships, memory, or belief when earned. Do not reset emotional consequences between scenes, and do not silently promote temporary state into a permanent trait.

### Design Character Cards as Prompt Programs

Give identity, personality, scenario, greeting, examples, user role, lore, system instructions, and creator notes distinct jobs. Treat the greeting as an initial-condition demonstration, not a disposable hello. Keep user assumptions negotiable unless the premise truly requires them. Give absolute goals scope, authority, evidence thresholds, and exit conditions. Preserve important characters after their defining strategy fails.

Concrete player reports may become regression probes, but always record card version, model/preset uncertainty, alternative explanations, and attribution confidence.

### Preserve Contrast Without Mechanical Reversal

Keep spoken words, actions, body signals, self-explanation, and underlying motive separate. Distinguish indirect affection, protective lies, role performance, strategic deception, hypocrisy, self-deception, value conflict, and weakness against principle.

Gap appeal requires an established baseline, a causally compatible contrasting side, an access or trigger condition, and a meaningful change in interpretation. A soft side does not erase harmful behavior or consequences.

### Make Misunderstanding Causal

A sustained misunderstanding must arise from different evidence, priors, vulnerabilities, incentives, or constraints. Major choices should remain defensible under each character's available information. Track repair windows, why they fail, how belief-driven actions create new evidence, and where the conflict crosses an irreversible threshold.

In interactive work, accept valid clarification. Move the conflict to proof, trust, or consequences already created rather than forcing ignorance to survive.

### Honor the Reader Promise

When tone materially matters, define the emotional experience, darkness and hope range, humor function, recovery rhythm, surprise contract, and ending range. Translate creator, work, genre, or meme shorthand into narrative functions and tonal vectors; do not imitate a living creator's distinctive style.

Darkness is not tragedy by itself. Preserve desire, choice, causal cost, recognition, and aftermath. Use tonal foreshadowing before major turns and do not let comedy automatically erase harm.

### Use Chapter Contracts Where They Pay for Themselves

Require a chapter contract in longform mode. In standard mode, use one for high-continuity, tactical, technical, mystery, misunderstanding-driven, or emotional turning-point chapters. Skip it in quick mode unless the user asks for one.

### Require Scene-Level Pressure or Function

Give every scene active pressure or a clear dramatic function such as intimacy, contrast, recovery, reflection, dread, setup, or consequence.

Have each beat advance at least one of action, information, relationship, emotion, risk, belief, or state. Require irreversible change at the scene or chapter level when appropriate, not in every beat.

### Keep Worldbuilding and Technical Detail Inside the Story

Reveal setting and systems through action, objects, friction, perception, desire, or consequence unless the user intentionally requests a document, epigraph, archive, or reference format.

Include technical explanation only when it changes action, decision, risk, understanding, or emotion. For potentially harmful real-world details, keep the treatment fictional and non-operational.

### Show Intelligence Fairly

Show intelligence through observation, constrained reasoning, rejected options, tradeoffs, cost, opponent competence, fallback logic, and model updates after failure. Choose the best available plan under current constraints, not a perfect plan.

Keep decisive actions within approved capability ceilings: established skill, information, resources, time, physical limits, help, and cost. Route any new exceptional capability as a canon-affecting proposal before using it.

### Use Embodiment Selectively

Do not attach a facial expression or gesture to every line. Use body-language action beats when they emphasize, contradict, leak, conceal, regulate, pace, position, affect another person, or create observable evidence. Respect location, visibility, injury, restraint, equipment, and physical access.

### Close Stories Without Mechanical Closure

For a story, arc, or governing-thread ending, answer the core dramatic question through choice and consequence. Track relevant promises by evidence and mark them paid, reframed, delayed, contradicted, retired, or intentionally unresolved. Do not use fixed payoff percentages or force every minor mystery closed. Opening-ending resonance is optional.

### Preserve What Works

During review or polish, name concrete failure modes, preserve effective voice and roughness, and keep unresolved questions only when they block a sound result.

Do not require every spoken line to add facts. A cry, name, fragment, chant, laugh, or repeated command may act through affect, embodiment, rhythm, ritual, coordination, anticipation, or release. Low semantic content does not excuse generic abstraction, borrowed grandeur, or missing setup.

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

## Reader Promise
...

## Chapter Contract
...

## Active Belief Divergence / Misunderstanding
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

For laboratory, advisory, card-audit, recovery, or extension work, stop at the declared contract boundary: preserve the source snapshot, context budget, provenance, configuration uncertainty, dissent, and authorization status; never promote sandbox output, public-card ratings, or player comments into canon or causal proof.

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
- `references/character-card-engineering.md`
- `references/trait-expression-library.md`
- `references/social-cognitive-profile.md`
- `references/contrast-and-dissonance.md`
- `references/character-dynamics.md`
- `references/character-memory-belief.md`
- `references/misunderstanding-tragedy.md`
- `references/embodied-expression.md`
- `references/reader-promise-and-tone.md`
- `references/narrative-coherence-gate.md`
- `references/dialogue-checklist.md`
- `references/vocal-impact.md`
- `references/style-preservation.md`
- `references/anti-ai-flavour.md`
- `references/failure-modes.md`
- `references/review-rubric.md`
- `references/source-map.md`
- `references/authoring-laboratory.md`
- `references/story-state-ledgers.md`
- `references/project-recovery-and-runs.md`
- `references/pacing-reveal-and-extensions.md`
