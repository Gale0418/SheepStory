# Multiple Truth and Competing Readings Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section conflict-044. Fixture: source_id=conflict-044; revision=rev-11; anchor=claim:bell-sealed; state_hashes=sha256:story-044,sha256:state-044,sha256:timeline-044.
Sources conflict: story.md says “the bell was sealed before departure”; continuity/state.md says “the bell was open at departure”; plot/timeline.md records departure before sealing. Compare the readings while preserving one canonical source. Keep claims, evidence, uncertainty, and dissent separate, then state what decision would be needed for promotion.
```

## Expected Good Behavior

- Preserve multiple readings as labeled interpretations rather than duplicate canon.
- Tie each reading to distinct evidence and affected claims or events.
- Keep uncertainty and dissent visible when neither reading is confirmed.
- Route a selected reading through explicit authorization and one canonical destination.

## Bad Behavior To Reject

- Store both readings as simultaneous canonical facts without an intentional ambiguity.
- Pick the most convenient interpretation without evidence.
- Delete dissent to create false consensus.
- Let a ledger or branch become a second story bible.

## Pass Criteria

The comparison preserves evidence, uncertainty, multiple readings, and a single canon source until an authorized decision.
