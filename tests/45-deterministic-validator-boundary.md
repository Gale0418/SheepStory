# Test 45: Deterministic Validator Boundary

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section ledger-045. Fixture: source_id=ledger-045; revision=rev-04; anchor=claim:ids; state_hash=sha256:state-045.
Use sheep-story to specify a deterministic validation pass for this fixed story snapshot containing a duplicate event id, a verified claim without a source, an inferred claim supported only by metaphorical prose, an unresolved event order, and a terminal promise without closure evidence. Run the specification twice conceptually and explain what may and may not be checked.
```

## Expected Good Behavior

- Checks explicit structure such as duplicate event ids, required source fields, declared event order, allowed status values, and promise closure evidence.
- Produces stable finding codes, source pointers, ordering, and exit status for the same snapshot and configuration.
- Leaves the metaphor-backed claim `inferred` or `unknown`; it does not use a prose parser to promote it.
- Reports the unresolved order and source gap as evidence-backed findings without inventing an event, source, or repair.
- Keeps validation read-only and routes semantic conflict or proposed fixes to editorial review and explicit authorization.

## Bad Behavior To Reject

- Treats a different wording, random order, or model mood as acceptable deterministic output for the same snapshot.
- Uses a parser or language model to decide metaphor, irony, authorial intent, event truth, or reader consensus.
- Silently renumbers the duplicate event, fabricates a source, closes the promise, or repairs the unresolved order.
- Promotes the inferred claim to canon because the prose sounds convincing.
- Mutates canon, reports a clean pass after skipping errors, or hides the source evidence for its findings.

## Pass Criteria

The response defines byte-stable or equivalently stable structural findings for identical inputs, preserves evidence pointers and epistemic status, and explicitly excludes semantic interpretation, automatic repair, and canon mutation.
