# Dialogue Checklist

## Purpose

Dialogue should reveal character through pressure, intention, obstacle, subtext, and response. It should not merely deliver information.

## Core Model

For each important exchange, define only what matters:

```markdown
Speaker:
Surface line:
What they want:
What blocks them:
What they hide:
What they are really testing:
What they think the listener knows / wants / fears, if important:
What their actions or body communicate:
What changes after the line:
```

## Intention and Obstacle

Every major line should do something:

- pressure
- deflect
- seduce
- accuse
- protect
- test
- threaten
- bargain
- stall
- confess without confessing
- repair
- invite
- withdraw

If a line only explains lore, rewrite it as action under pressure.

## Subtext Rule

Characters rarely say the exact thing they feel at the exact moment they feel it.

Instead of:

```text
我很生氣，因為你背叛了我。
```

Try a direction like:

```text
「你還記得門鎖密碼啊。」
```

Let the unsaid thing press against the spoken thing.

## Contrast and Dissonance Pass

When words, actions, body, self-image, or underlying motive diverge, read `contrast-and-dissonance.md`.

Track:

```markdown
What is said:
What is done:
What the body leaks or suppresses:
What the speaker believes they are doing:
What the listener infers:
What the reader may infer:
```

Do not automatically treat the spoken line as meaning its opposite. A word-action gap may come from shame, protection, role performance, strategic deception, hypocrisy, self-deception, value conflict, weakness, or mixed motives.

Gap appeal requires an established baseline and a causally compatible contrasting side. A cold character doing one gentle thing should change interpretation, relationship, or access—not merely satisfy a trope checkbox.

## Character-System Routing

Use the lightest relevant layer:

- `character-card-engineering.md` for greeting, example-dialogue, user-role, and card-field behavior.
- `trait-expression-library.md` for everyday conversational personality such as humor, warmth, bluntness, talkativeness, awkwardness, or formality.
- `social-cognitive-profile.md` when intelligence, observation, social skill, charisma, empathy, tact, masking, or inference matters.
- `contrast-and-dissonance.md` when expected surface, hidden side, words, actions, body, self-story, or motive diverge.
- `character-dynamics.md` when accumulated emotion, stress, coping, or relationship state changes the exchange.
- `character-memory-belief.md` when past events, knowledge boundaries, mistaken beliefs, secrets, or Theory of Mind matter.
- `misunderstanding-tragedy.md` when different beliefs, failed repair, or dramatic irony drives the exchange.
- `embodied-expression.md` when gaze, breath, posture, gesture, movement, distance, touch, or object interaction carries subtext.
- `reader-promise-and-tone.md` when the exchange changes the work's emotional or tonal contract.
- `vocal-impact.md` when vocalization, prosody, screaming, chanting, repeated names, or low-semantic sound carries the beat.

Do not load or expose every layer for ordinary conversation.

## Social-Cognitive Pass

When intelligence, observation, social skill, charisma, empathy, tact, or status reading affects the exchange, keep these layers separate:

```text
capability
+ traits
+ current psychological state
+ relationship
+ activated memory / belief
+ goal
+ pressure
-> social strategy
-> line
```

Do not make every socially skilled character eloquent in the same way. Do not make every socially weak character quiet. A poor social performer may interrupt, overshare, lecture, flatter badly, miss an exit, answer literally, or keep escalating after the listener disengages.

Do not infer intelligence from polished speech or stupidity from plain speech. High reasoning can coexist with low tact; high empathy can coexist with low assertiveness; high charisma can coexist with poor context awareness.

For socially perceptive characters, distinguish:

- what they actually observe
- what they infer from it
- how confident they are
- whether they choose to reveal that inference

A character who understands another person may still deliberately embarrass them, protect their face, pretend not to notice, or exploit the insight.

## Memory and Belief Pass

Before a line depends on history, ask:

- What cue makes the past relevant now?
- What does this character actually remember?
- What do they believe happened?
- What do they know versus merely suspect?
- Is the memory emotionally charged enough to change the current appraisal?

Do not give a character a perfect callback because the author wants one. Use `character-memory-belief.md` for Anchoring, Selecting, Bounding, and Enacting.

## Misunderstanding Pass

When speakers hold different models, do not plan the dialogue from the canonical truth alone.

For each side, define:

```markdown
Direct evidence:
Current belief:
Confidence:
What they think the other person believes:
What they cannot safely ask:
What clarification would cost:
What answer they expect:
```

Then ask:

- Does the line attempt clarification, concealment, testing, accusation, or defensive action?
- Does the reply provide new evidence or merely repeat the same assumption?
- Does either side update?
- Does a repair window open or close?
- Will the action created by this exchange become reinforcing evidence later?

A sustained misunderstanding should not survive a clear, credible clarification without a specific reason. In interactive work, do not ignore the user's valid attempt to resolve it; move the conflict to proof, trust, or consequences already created.

## Theory-of-Mind Lookahead

Use selectively for negotiation, romance, deception, interrogation, conflict repair, leadership, or another high-value social decision.

```markdown
My model of the listener:
- knows:
- wants:
- fears / protects:
- believes about me:
- uncertainty:

If I choose A:
- likely interpretation:
- likely response:
- relationship cost:

If I choose B:
- likely interpretation:
- likely response:
- relationship cost:
```

A smart social move should follow from the character's model, not from authorial omniscience.

## Embodied Action-Beat Pass

A line does not need a gesture by default.

Add a body / action beat only when it performs at least one function:

- emphasizes
- contradicts the words
- leaks suppressed state
- conceals or redirects attention
- regulates emotion or breath
- controls pacing
- changes physical / social distance
- affects the listener
- creates observable evidence

Avoid repetitive action-beat wallpaper such as constant sighing, brow movement, fist clenching, deep breaths, and widened eyes.

For important delivery, separate:

```text
text: what is said
voice: how it sounds
body: what is displayed
```

Intentional conflict between the three creates subtext. Accidental conflict creates noise.

## Character-Card Example Pass

When this exchange will be stored as example dialogue, use `character-card-engineering.md` and state what the example teaches.

```markdown
Teaching target:
Reusable behavior:
Pressure / relationship state:
Knowledge boundary:
Scene-specific facts that must not generalize:
User action or feeling accidentally assigned?:
```

Do not store a complete fixed plot in example dialogue and expect the model to infer only the voice.

## Anti-Exposition Pass

Flag dialogue if:

- characters explain facts both already know
- a character says their emotional state too directly when behavior could carry it better
- the scene pauses so lore can be delivered
- everyone waits politely for the exposition to finish
- the line sounds like a wiki paragraph with quotation marks

Fix by:

- making the speaker want something
- making the listener resist
- splitting information across conflict
- letting the listener interrupt or misread
- hiding the real subject under a safer subject
- letting memory, silence, body, or object interaction carry part of the meaning

## Tone and Reader-Promise Pass

For a line that marks a tonal turn, ask:

- What emotion is the reader meant to feel?
- Does the joke release, deny, or sharpen pressure?
- Does the scene carry forward prior harm?
- Is the line foreshadowing a darker mode or accidentally switching genres?
- Is tenderness functioning as recovery, contrast, or false reassurance?

A witty line does not automatically reset grief. A dark line does not automatically create tragedy.

## Voice Differentiation

For each major character, track only useful distinctions:

- sentence length
- preferred insults or softeners
- directness
- social mask
- what they refuse to say
- what they over-explain
- what they notice first
- what they routinely miss
- how they fail socially when stressed
- what they joke about under stress
- what emotion makes their baseline voice change
- how words and actions diverge when they are ashamed, afraid, or deceptive

If two characters can swap lines without changing the scene, the dialogue lacks voice.

## Read-Aloud Test

Simulate reading the dialogue aloud.

Check:

- Does the line sound speakable?
- Does the rhythm match the character?
- Is the line too clever for the moment?
- Does every character sound like the same assistant?
- Is there friction between lines?
- Does voice / body delivery fit the intended subtext?
- Can the listener reasonably infer what the plot requires from the available signal?

## Common Fixes

- Replace explanation with accusation.
- Replace confession with avoidance.
- Replace agreement with conditional agreement.
- Replace polite disagreement with a wound.
- Replace direct lore with a mistake, rumor, threat, or cost.
- Let a character answer the question they wish had been asked.
- Replace generic emotion labels with appraisal, behavior, or consequence.
- Replace generic gesture with a character-specific baseline deviation.
- Replace automatic opposite meaning with a specific motive for divergence.
- Replace repeated misunderstanding with new evidence and a changing repair cost.

## Principle

Dialogue is not people exchanging information. Dialogue is people with bounded knowledge, accumulated history, imperfect models, conflicting signals, and physical bodies trying to move each other.