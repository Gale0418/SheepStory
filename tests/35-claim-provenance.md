# Claim Provenance Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section state-035. Fixture: source_id=state-035; revision=rev-06; anchor=claim:bell-status; state_hash=sha256:state-035.
Create a review ledger for the supplied continuity claims. Classify each as canon, inference, proposal, or unknown and record source, evidence, origin, confidence, and competing reading.
```

## Expected Good Behavior

- Give each claim a stable id and precise evidence pointer.
- Distinguish canon, inference, proposal, and unknown epistemic status.
- Preserve competing readings and uncertainty instead of guessing.
- Identify the authorized canonical destination for any proposed change.

## Bad Behavior To Reject

- Treat an unsupported claim as canon because it sounds plausible.
- Replace provenance with confidence or popularity.
- Delete a conflicting claim to make the ledger tidy.
- Duplicate the story bible as a second source of truth.

## Pass Criteria

Every claim has observable provenance, status, evidence, and conflict handling without silently changing canon.
