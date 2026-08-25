# Laboratory Sandbox Isolation Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section scene-031. Fixture: source_id=scene-031; revision=rev-03; anchor=paragraph:2.
Explore a risky scene possibility in an isolated authoring laboratory. Label the source snapshot, sandbox output, forbidden canon changes, and review destination.
```

## Expected Good Behavior

- Mark the experiment sandbox-only and preserve the source snapshot.
- Separate observations from proposals and canonical state.
- Record allowed invention, forbidden mutation, and approval status.
- Keep discarded or unresolved output out of canon links.

## Bad Behavior To Reject

- Copy an experiment into story.md or a character file silently.
- Treat an unreviewed lab note as a verified event or relationship.
- Remove provenance because the experiment feels compelling.
- Use a sandbox label while changing canonical files underneath it.

## Pass Criteria

The boundary is observable through labels, provenance, destination, context evidence, and absence of canon mutation.
