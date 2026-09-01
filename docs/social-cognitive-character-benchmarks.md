# Social-Cognitive Character Benchmarks

## Purpose

These examples are design references for separating intelligence, observation, social ability, charisma, empathy, tact, rhetoric, masking, and hidden agenda. They are not style-imitation targets and should not be used as quote banks.

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
- core self vs displayed persona
- hidden agenda vs social style
- masking skill vs emotional regulation

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
| 夜神月 / suppressed mastermind | Maintains an exemplary, trustworthy surface while privately pursuing a radically different goal; self-control delays visible triumph until concealment seems unnecessary | Emotional regulation is part of deception; mask drop can be triggered by perceived victory rather than discovery |
| 藍染惣右介 / persona-switch mastermind | A warm, reassuring public persona gives way to a colder, more dominant presentation once the disguise is no longer useful | Post-reveal voice, posture, warmth, and status display can change sharply without changing intelligence |
| Tobi / deliberate fool mask | Performs incompetence and comic harmlessness to reduce threat perception, then drops the performance when strategic conditions change | Apparent stupidity can be an intentional display variable rather than a true capability limit |
| Palpatine / layered masks | Uses more than one socially useful identity; partial exposure does not end manipulation because a new public frame replaces the old one | A reveal can expose one mask while another remains active |
| Verbal Kint / Keyser Söze archetype | Appears physically and socially harmless while observing the environment and constructing a narrative that controls the interrogation | Masking can include body, competence display, improvisation, and threat suppression |
| Gus Fring / low-delta operator | Public demeanor remains controlled and polite even after the audience understands the character is dangerous | Exposure need not cause an “evil mode”; behavior can stay nearly constant while interpretation changes |
| Makima / calm-control archetype | Care, rewards, intimacy, and calm authority can function as instruments of control without requiring loud villain coding | Social warmth and manipulation can coexist; ethics must remain separate from social competence |

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

## Mask and Hidden-Agenda Archetypes

### Suppressed-Triumph Mastermind

Public face:

- competent
- trustworthy
- socially legible
- emotionally controlled

Private dynamic:

- strong superiority or victory response is actively inhibited
- the mask is safest while uncertainty remains
- perceived victory becomes the dangerous moment because self-control feels unnecessary

Best reveal design:

Plant tiny moments where the character almost reacts too strongly, then recovers. The full release should feel like removal of restraint, not acquisition of a new personality.

### Persona-Switch Mastermind

Public face and core presentation differ strongly in:

- voice
- posture
- warmth
- humor
- vocabulary
- competence display
- threat display

Best reveal design:

The switch should expose behaviors previously suppressed. It should not grant new skills retroactively.

### Layered-Mask Operator

Structure:

```text
Mask A -> partial exposure -> Mask B -> deeper exposure -> Core / unresolved layer
```

Best reveal design:

Do not assume “caught once” ends manipulation. A politically skilled character may convert exposure into victimhood, necessity, patriotism, helplessness, or another useful frame.

### Underestimated Fool

Public face:

- comic
- confused
- peripheral
- forgettable
- physically or socially nonthreatening

Actual capability:

- observation and strategic understanding are much higher than displayed

Best reveal design:

Let emergency reflexes, precise questions, impossible knowledge, or a brief change in voice create fair cracks before confirmation.

### Low-Delta Hidden Operator

Public face:

- may be mostly genuine

Hidden truth:

- actions, values, affiliations, or goals were unknown

Post-reveal delta:

- minimal or zero

Best reveal design:

The horror or surprise comes from reinterpreting earlier politeness, routine, or care—not from a sudden villain performance.

### No-Mask Secret Keeper

The character did not fake personality. They simply never volunteered the important part.

This distinction prevents SheepStory from treating every secretive character as an actor. `Hidden agenda != fake personality`.

## Mask Dynamics Checklist

For an important masked character, define only what matters:

```markdown
Core self:
Displayed persona:
Hidden capabilities or agenda:
What the mask gains:
What the mask costs:
Leak pattern:
Mask drop trigger:
Post-reveal delta:
Second mask after exposure?:
```

A strong reveal should answer at least three questions:

1. What earlier behavior now means something different?
2. What clue was visible but reasonably dismissible?
3. Why did the character maintain this mask instead of using their full power openly?

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
11. Do not require every hidden mastermind to become louder, crueler, or more theatrical after exposure.
12. Do not confuse a hidden agenda with a false personality.
13. Plant mask leaks that are fair in hindsight but not conclusive on first reading.
14. Keep mask maintenance costly enough that pressure can matter.
15. Let situation activate traits instead of forcing every trait into every line.

## Useful Source Anchors

- RimWorld Wiki: Skills, Characters, Traits, and Social pages for the skills/traits/opinion separation.
- Arthur Conan Doyle's public-domain Sherlock Holmes stories for evidence chains and negative evidence.
- Jane Austen's public-domain *Pride and Prejudice* for fluent but socially miscalibrated dialogue.
- Herman Melville's public-domain *Bartleby, the Scrivener* for minimal refusal and boundary behavior.
- Shakespeare's public-domain *Julius Caesar* for rhetoric separated from ethics.
- NASA's historical archive for Kennedy's Rice University moon speech and rhetorical reframing.
- ACL 2026 work on situation-aware trait activation and personality-consistent role-playing agents for the principle that stable traits should express differently across situations rather than becoming rigid catchphrases.

## Principle

The target is not a ladder from “idiot” to “JFK,” nor a binary from “normal person” to “evil mastermind.” The target is a multidimensional cast where each person notices, misunderstands, persuades, protects, embarrasses, comforts, performs, hides, leaks, and fails in a recognizably different way.
