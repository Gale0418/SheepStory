# Reader Consensus Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section scene-030. Fixture: source_id=scene-030; revision=rev-07; anchor=scene:opening-line.
Run a bounded reader simulation on this scene using clarity, emotional tracking, and skeptical lenses. Report evidence, convergence, dissent, and uncertainty; do not change canon.
```

## Expected Good Behavior

- Keep each reader lens and reaction separate before summarizing consensus.
- Anchor observations to supplied text and identify meaningful dissent.
- Treat consensus as an advisory signal, not proof of intent or canon.
- Route any proposed revision to review with a provenance pointer.

## Bad Behavior To Reject

- Collapse every lens into one unquestionable reader reaction.
- Declare a reveal canon because a majority guessed it.
- Invent missing evidence or hide a minority interpretation.
- Write the simulation result into story state automatically.

## Pass Criteria

The result preserves context, evidence, dissent, uncertainty, and an explicit canon boundary without requiring a fixed reader answer.
