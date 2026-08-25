# Event and Timeline Ledger Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section timeline-036. Fixture: source_id=timeline-036; revision=rev-03; anchor=event:departure; state_hash=sha256:state-036.
Record the supplied events in a timeline ledger. Preserve uncertain ordering, locations, participants, triggers, consequences, and source evidence; distinguish observed from proposed events.
```

## Expected Good Behavior

- Preserve explicit time and relative-order uncertainty.
- Link events to participants, location, trigger, consequence, timeline placement, and source evidence.
- Mark connective events as proposed rather than observed canon.
- Flag impossible ordering or travel as an editorial issue.

## Bad Behavior To Reject

- Invent exact timestamps or travel time to fill a gap.
- Convert a proposed event into an observed event.
- Hide simultaneity or causality conflicts.
- Rewrite the canonical timeline while generating the ledger.

## Pass Criteria

The ledger makes ordering, evidence, uncertainty, and contradictions inspectable without a fixed event sequence.
