# Social-Cognitive Character Benchmarks

## Purpose

These examples are design references for separating intelligence, observation, social ability, charisma, empathy, tact, and rhetoric. They are not style-imitation targets and should not be used as quote banks.

The runtime guidance lives in `skills/sheep-story/references/social-cognitive-profile.md`. This document preserves the reasoning behind that model.

## Core Design Lesson

A single `Charisma` or `Intelligence` score flattens too many distinct behaviors.

Useful separations include:

- reasoning vs domain knowledge
- physical observation vs social observation
- context awareness vs theory of mind
- observation vs inference vs calibration
- conversation skill vs charisma
- empathy vs tact
- assertiveness vs aggression
- persuasion vs ethics
- stable traits vs temporary state
- capability vs relationship-specific behavior

RimWorld is a useful structural analogy because Intellectual and Social are separate skills, while traits and pairwise social opinions are modeled separately. SheepStory should preserve the same kind of orthogonality rather than making one social stat explain everything.

## Benchmark Matrix

| Benchmark | What it demonstrates | SheepStory lesson |
|---|---|---|
| 夜守光 / context-reader archetype | Anticipates what a room may find awkward, explains the anomaly, lowers perceived threat, and gives others an easy social frame | High context awareness and tact can matter more than raw eloquence |
| 笹原直哉 / intent-reader archetype | Reads mismatch among wording, tone, behavior, prior history, and situational constraints to infer the hidden request or embarrassment | Social observation + theory of mind should be separate from charisma |
| Sherlock Holmes / evidence observer | Notices physical traces, combines them with domain knowledge, and sometimes uses missing expected evidence | Observation + knowledge + inference; none alone grants omniscience |
| Columbo / underestimated observer | Appears harmless or slow enough that another person relaxes and reveals more | Deception/masking can deliberately suppress displayed competence |
| Mr. Collins | Fails to update his model after explicit rejection | Low calibration or theory-of-mind updating can coexist with fluent speech |
| Darcy's first proposal | Intelligent and articulate, but socially injures the listener by foregrounding status and inferiority | Reasoning and eloquence do not imply tact |
| Bartleby | Uses minimal, stable refusal rather than persuasive elaboration | Low talkativeness is not low social competence; assertiveness can be quiet |
| Fred Rogers | Models what the audience actually needs to understand and translates an abstract institutional request into human stakes | Empathy + audience modeling + framing can outperform data dumping |
| John F. Kennedy's moon rhetoric | Reframes difficulty from an objection into part of the reason to act | High-level persuasion often changes the frame rather than adding facts |
| Mark Antony in *Julius Caesar* | Reads a crowd and uses repetition, irony, and sequencing to redirect sentiment | Persuasion skill and ethics must remain separate axes |
| Chesley Sullenberger / crisis communicator | Under extreme time pressure, communicates only the decision-relevant information | High social performance can mean saying less, not sounding grander |
| Tony Hayward / high-status context failure | Centers personal inconvenience in a disaster context | Fluent speech cannot compensate for low empathy/context awareness |
| United Airlines “re-accommodation” response | Euphemistic corporate language conflicts with the audience's visible reality | Politeness register without context alignment can worsen trust |

## Observation Archetypes

### Context Reader

Primary strengths:

- context awareness
- social observation
- tact
- face-saving

Typical move:

1. identify the room's unspoken concern
2. address it before someone must ask
3. reduce status or threat friction
4. leave others an easy response

Typical failure if calibration is low:

- over-explains a concern nobody actually had
- manages impressions so aggressively that it feels rehearsed

### Intent Reader

Primary strengths:

- social observation
- theory of mind
- relationship memory
- pattern recognition

Typical move:

1. compare words with behavior
2. compare current behavior with baseline
3. consider constraints on what the person can comfortably say
4. infer multiple possible hidden intents
5. choose whether to expose or protect the inference

Important limit:

Reading intent is probabilistic. A shy gesture, pause, gaze shift, or blush is not a deterministic code.

### Evidence-Deduction Observer

Primary strengths:

- physical observation
- domain knowledge
- pattern recognition
- negative evidence
- causal reasoning

Typical move:

1. inventory observable traces
2. separate observation from interpretation
3. generate competing hypotheses
4. test which hypothesis best explains both present and absent evidence
5. state confidence proportionally

Important limit:

A large hat does not prove intelligence. A neglected object does not prove a failing relationship. Sherlock-style inference is most convincing when the evidence chain can be reconstructed and the weaker links remain visibly weaker.

### Underestimated Observer

Primary strengths:

- observation
- patience
- masking
- interrogation by apparent harmlessness

Typical move:

1. lower perceived threat
2. let the target explain too much
3. ask an apparently minor question
4. watch the repair, hesitation, or contradiction
5. reveal competence only when useful

## Social Failure Archetypes

### Brilliant Abrasive

High:

- reasoning
- domain knowledge
- assertiveness

Low:

- tact
- empathy expression

Result:

They may give the correct answer in a way that damages cooperation.

### Warm Fool

High:

- empathy
- loyalty
- morale support
- practical social intuition

Low:

- abstract reasoning
- technical knowledge

Result:

They may misunderstand the machinery and still be the first person to notice someone is hurting.

### Charming Misreader

High:

- charisma
- fluency
- confidence

Low:

- context awareness
- calibration

Result:

Everyone notices them; then they say exactly the wrong thing with excellent delivery.

### Silent Reader

High:

- observation
- theory of mind

Low:

- talkativeness
- assertiveness

Result:

They understand the room but fail to intervene until it is too late.

### Caring but Tactless

High:

- empathy
- honesty

Low:

- tact
- face-saving

Result:

They understand the wound and still touch it directly.

## Design Guardrails

1. Do not make low intelligence equal broken grammar.
2. Do not make low social skill equal silence.
3. Do not make high charisma equal kindness.
4. Do not make high observation equal truth.
5. Do not make empathy equal persuasion.
6. Do not make a character use every capability at maximum output in every scene.
7. Let stress, fatigue, fear, status, attraction, resentment, and trust change performance.
8. Let characters deliberately hide or underperform skills.
9. Distinguish a wrong inference from an unreasonable inference.
10. Give different characters different characteristic failure modes.

## Useful Source Anchors

- RimWorld Wiki: Skills, Characters, Traits, and Social pages for the skills/traits/opinion separation.
- Arthur Conan Doyle's public-domain Sherlock Holmes stories for evidence chains and negative evidence.
- Jane Austen's public-domain *Pride and Prejudice* for fluent but socially miscalibrated dialogue.
- Herman Melville's public-domain *Bartleby, the Scrivener* for minimal refusal and boundary behavior.
- Shakespeare's public-domain *Julius Caesar* for rhetoric separated from ethics.
- NASA's historical archive for Kennedy's Rice University moon speech and rhetorical reframing.

## Principle

The target is not a ladder from “idiot” to “JFK.” The target is a multidimensional cast where each person notices, misunderstands, persuades, protects, embarrasses, comforts, and fails in a recognizably different way.
