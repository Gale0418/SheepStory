# Character Dynamics

## Purpose

Use this reference when a character's emotional response, accumulated pressure, coping behavior, defense mechanism, or relationship trajectory materially affects action or dialogue.

The goal is to avoid two opposite failures:

- **emotional amnesia** — a major event matters for one scene and then disappears
- **emotional rigidity** — a stable personality is mistaken for identical reactions in every situation

## Three Timescales

Keep long-, mid-, and short-horizon state separate.

### Long-Term Identity

Relatively stable unless the story earns a genuine transformation:

- values
- enduring traits
- attachment style or recurring social orientation
- deep fears / wounds
- moral lines
- habitual coping strategies
- identity commitments

### Mid-Term Psychological State

Persists across scenes or chapters and changes through accumulation:

- stress load
- resentment
- shame
- confidence erosion or recovery
- grief phase / unresolved mourning
- vigilance
- hope
- burnout
- sense of safety
- perceived belonging
- relationship-specific tension

### Short-Term Affect

Fast-changing scene state:

- anger
- fear
- embarrassment
- relief
- excitement
- disgust
- sadness
- curiosity
- arousal / activation

Do not reset mid-term state because a scene ended or a character slept.

## Event -> Appraisal -> Emotion

Do not assign emotion directly from an event label.

Use this chain for important emotional beats:

```text
event
+ character values / wants / fears
+ current relationship
+ memory activated
+ perceived control / responsibility / threat / opportunity
-> appraisal
-> emotional response
-> coping / action
```

The same event can produce different emotions.

Example: "You were selected for the expedition."

- glory-seeking character -> recognition / opportunity -> excitement
- fearful but dutiful character -> unavoidable responsibility -> fear + resolve
- suspicious character -> unexplained selection -> vigilance
- bereaved character -> reminder of a prior expedition death -> grief + avoidance

Do not use trait labels as shortcuts for emotion. Show the internal logic that connects event to response when it matters.

## Emotional Inertia and Decay

Emotions can operate at different speeds.

- fast affect may spike and settle within a scene
- stress, grief, resentment, trust, or vigilance can accumulate and decay slowly
- a new event can reactivate an older state

Use qualitative state by default. Numeric models are optional and should not become visible bookkeeping unless the project benefits from simulation.

A useful conceptual model is:

```text
short-term reaction = current event + activated memory + current state
mid-term update = previous mid-term state + meaningful consequence - recovery
```

## Emotion-Memory Coupling

Important memories can carry emotional charge.

A cue may reactivate both content and feeling:

- a phrase used during a betrayal
- a room associated with loss
- a song, smell, uniform, object, name, or ritual
- a familiar body gesture

Do not force flashbacks every time a cue appears. Activation depends on relevance, salience, current vulnerability, recency, and relationship.

For retrieval mechanics, read `character-memory-belief.md`.

## Defense and Coping Mechanisms

A coping mechanism is not automatically pathology or a universal label. Use only mechanisms established by character history or repeated behavior.

Possible patterns include:

- **denial** — refuses the threatening interpretation
- **rationalization** — constructs a plausible explanation that protects self-image
- **projection** — attributes an unacceptable motive or feeling to someone else
- **displacement** — redirects emotion toward a safer target
- **intellectualization** — converts emotional threat into analysis or procedure
- **suppression** — consciously postpones emotional expression
- **humor** — uses comedy to regulate distress or preserve connection
- **avoidance** — leaves, changes topic, delays, or narrows contact
- **overcontrol** — becomes unusually formal, precise, or still

Defense activation should depend on situation and pressure. Do not make a character perform the same defense in every emotional scene.

## Relationship Metabolism

Do not reduce every relationship to one scalar "affection" score.

Track only dimensions that matter to the story, for example:

- trust
- respect
- affection
- attraction
- dependence
- fear
- resentment
- obligation / debt
- perceived safety
- rivalry
- status / authority

Relationships can be asymmetric:

```text
Alice -> Bob: trusts him, likes him, does not respect his judgment
Bob -> Alice: admires her, fears disappointing her, does not fully trust her
```

A relationship update should have evidence:

```text
event -> interpretation -> changed dimension -> behavioral consequence
```

Example:

```text
Bob kept a dangerous promise
-> Alice reads it as reliability but reckless judgment
-> trust +, respect for judgment -
-> she confides more but refuses to follow his plans blindly
```

## Relationship Accumulation and Conflict

When several interactions point in different directions, do not stack mutually incompatible summaries without resolution.

Reconcile by asking:

- Which event is more recent?
- Which event is more emotionally salient?
- Was the apparent contradiction context-specific?
- Did trust change while affection stayed stable?
- Did the character reinterpret an older event after learning new information?

Preserve contradiction when it is psychologically meaningful. A character can love and distrust someone at the same time.

## State-Dependent Trait Expression

Traits are behavioral biases, not scripts. Read `trait-expression-library.md` for expression archetypes.

Examples:

- enthusiastic + high stress -> talks faster or suppresses energy around a frightened person
- humorous + grief -> one small joke may carry more character than ten jokes
- tactful + anger -> chooses a private confrontation rather than a public humiliation
- shy + emergency -> may speak clearly because task urgency overrides social inhibition

Stable characterization means the variation is explainable, not that behavior is identical.

## Recovery Must Be Earned

A character may recover through:

- time
- safety
- sleep / food / treatment
- successful action
- apology / repair
- information that changes appraisal
- social support
- distance from the trigger
- acceptance or changed goals

Do not restore emotional baseline simply because the next chapter needs the character functional.

## Update Shape

For a meaningful state-changing event, record only relevant fields:

```markdown
Event:
Appraisal:
Short-term affect:
Mid-term state change:
Relationship dimension changed:
Memory / cue created or reactivated:
Coping / defense activated:
Behavioral consequence:
Recovery condition or open pressure:
```

## Principle

Emotion is not decoration attached to an event. It is the character's interpretation of what the event means, carried forward through memory, pressure, coping, and relationships.