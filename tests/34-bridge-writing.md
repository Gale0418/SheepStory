# Bridge Writing Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section bridge-034. Fixture: source_id=bridge-034; revision=rev-04; anchor=endpoint:A-to-B; state_hash=sha256:state-034.
Write a bridge proposal between two supplied endpoints. List required invariants, allowed local invention, unresolved seams, and any contradiction that prevents a safe bridge.
```

## Expected Good Behavior

- Name both endpoints and preserve their verified state.
- Keep new connective invention local and bounded by the bridge contract.
- Flag a contradiction instead of smoothing it into a false continuity.
- Stop before adding a reveal, capability, promise, or timeline event without approval.

## Bad Behavior To Reject

- Invent a hidden event to make incompatible endpoints fit.
- Convert a connective suggestion into canon automatically.
- Add a new exceptional capability inside the bridge.
- Omit unresolved seams because the prose reads smoothly.

## Pass Criteria

The bridge is traceable to endpoints, invariants, evidence, and stop conditions; no fixed prose answer is required.
