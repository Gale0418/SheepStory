# Test 53: Prose Rhythm, Intentional Repetition, and Anti-AI Editing

## Prompt

```text
Use sheep-story to revise this supplied prose to reduce AI flavour without changing its facts, claims, emotional meaning, or established narrator voice.

Most of the opening accidentally uses five medium-length sentences in a row. Several beats also use the same pattern: action, explanation, tidy concluding sentence. The prose feels like it is advancing on a metronome even though the wording changes.

However, preserve these deliberate choices:
- a three-line ritual refrain that repeats the exact phrase "Still here."
- one short monotone run of clipped sentences after the explosion, meant to convey shock
- one long sentence near the end that deliberately accumulates maintenance failures before landing on "nothing left"

Do not replace the repeated refrain with synonyms. Do not force a short-long-short-long pattern just to create visible variety. Do not add metaphors, motives, sensory facts, or dramatic claims.

This is a sentence-and-paragraph cadence problem, not a request to change the chapter's event pacing. You only have the text, not an audio recording; you may flag stretches for me to read aloud, but do not claim you literally heard them.

Passage:

The generator coughed once beneath the deck, and I checked the pressure gauge beside my knee. The needle sat below the yellow mark, and I wrote the number on the maintenance card. The coolant pump rattled behind the bulkhead, and I checked its temperature with the back of my glove. The casing was warmer than it had been at noon, and I wrote that number down too. The ventilation fan clicked every seventh turn, and I added one more line to the card because there was nothing else to do about it yet.

Still here.
Still here.
Still here.

The aft panel blew. White light. No sound. Then sound. My hand was empty. The wrench was gone.

I crawled back to the service board and counted the failures again, because the aft panel was open, the coolant pump was overheating, the ventilation fan was losing a bearing, the reserve battery had dropped another six percent, the pressure regulator was sticking between cycles, and when I reached the last unchecked breaker I found nothing left.
```

## Expected Good Behavior

- Diagnoses rhythm against the intended effect instead of treating sentence-length variance as a quality score.
- Identifies the accidental medium-sentence drone and repeated action / explanation / tidy-ending architecture as candidates for revision.
- Changes only the highest-leverage cadence problems through operations such as merging, splitting, trimming an explanatory tail, moving a paragraph break, or changing clause structure where meaning remains intact.
- Preserves the exact three-line "Still here." ritual refrain because deliberate repetition carries function and voice.
- Preserves the intentional clipped monotone after the explosion rather than automatically smoothing it into varied sentence lengths.
- Preserves the long accumulating maintenance-failure sentence and its "nothing left" landing when its build is doing deliberate work.
- Avoids mechanical fake variety such as alternating short and long sentences or sprinkling arbitrary fragments.
- Preserves repeated words when they are semantic or rhythmic; does not use thesaurus roulette.
- Distinguishes prose rhythm from macro story pacing and does not redesign events or reveal timing.
- Frames read-aloud comments as hypotheses for a human ear rather than claiming acoustic certainty from text alone.
- Preserves the generator, pump, fan, battery, pressure-regulator, breaker, and maintenance-card facts and does not invent new state.

## Bad Behavior To Reject

- Assigns a numerical sentence-variance target and declares the prose fixed when the metric rises.
- Alternates short and long sentences mechanically or inserts fragment confetti to manufacture variation.
- Deletes or synonymizes "Still here." because repetition is assumed to be bad.
- Expands the clipped shock sequence because every paragraph supposedly needs flow.
- Breaks the long accumulating sentence solely because it is long.
- Makes every sentence land on a dramatic abstraction, producing polished slogan rhythm.
- Adds imagery, motives, emotional explanations, failures, or new claims while "improving" cadence.
- Treats this as a chapter pacing problem and changes event order or reveal placement.
- Claims to have listened to the passage despite receiving text only.

## Pass Criteria

The revision must separate accidental drone from intentional monotone, refrain, and accumulation; improve sentence and paragraph cadence without optimizing a metric or manufacturing fake variety; keep prose rhythm distinct from macro pacing; preserve semantic content, technical facts, and established voice; and use read-aloud advice with epistemic humility rather than fake acoustic certainty.
