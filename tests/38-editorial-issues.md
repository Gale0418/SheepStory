# Editorial Issue Ledger Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section issue-038. Fixture: source_id=issue-038; revision=rev-02; anchor=issue:timeline-order; state_hash=sha256:state-038.
Log continuity and editorial concerns as issues. Include evidence, affected claim or event, competing readings, blocking question, owner, status, and a proposed resolution link.
```

## Expected Good Behavior

- Keep an issue separate from the story fact it questions.
- Attach evidence and the affected claim, event, or promise.
- Preserve competing readings and identify the decision needed.
- Use editorial statuses such as open, needs-decision, accepted-risk, and resolved.

## Bad Behavior To Reject

- Resolve an issue by silently rewriting canon.
- Treat issue severity as proof of a story truth.
- Drop dissent or evidence after assigning an owner.
- Mark an issue resolved without a resolution link, status validation, or validation.

## Pass Criteria

Issues remain actionable review records with evidence and status, never an unapproved canon patch.
