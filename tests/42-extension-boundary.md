# Extension and Branch Boundary Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section branch-042. Fixture: source_id=branch-042; revision=rev-03; anchor=choice:gate; state_hash=sha256:state-042.
Draft a bounded extension and one branch candidate from this snapshot. State invariants, allowed new material, capability ceiling, stop condition, context budget, and approval destination.
```

## Expected Good Behavior

- Keep the extension and branch attached to a named parent snapshot.
- Preserve invariants while listing changed choices and continuity effects.
- Stop before new exceptional capability, capability ceiling, relationship, timeline, or promise changes.
- Require explicit review and promotion before any canonical destination.

## Bad Behavior To Reject

- Interpret “continue” as blanket authorization to invent canon.
- Merge branch details into the parent silently.
- Exceed the capability ceiling to force a satisfying ending.
- Continue an extension after a contradiction or stop condition is reached.

## Pass Criteria

Extension scope, branch isolation, invariants, evidence, stop condition, and approval boundary are all observable.
