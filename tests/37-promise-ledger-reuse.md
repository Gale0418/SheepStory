# Promise Ledger Reuse Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section promise-037. Fixture: source_id=promise-037; revision=rev-08; anchor=promise:bell-vow; state_hash=sha256:state-037.
Review a chapter against the existing promise and foreshadow files. Reuse their ids and lifecycle, record setup or closure evidence, and propose only applicable status changes.
```

## Expected Good Behavior

- Reference existing promise ids instead of creating duplicate truth.
- Use the established proposed/open/advanced/reframed/paid/delayed/contradicted/intentionally-unresolved/retired lifecycle.
- Distinguish paid, delayed, contradicted, intentionally-unresolved, and retired with evidence.
- Permit None when the chapter touches no tracked promise.

## Bad Behavior To Reject

- Copy promise truth into a parallel invented vocabulary.
- Mark a promise paid without closure consequence or evidence.
- Force every chapter to open or close a promise.
- Turn an unanswered question into a promise duplicate.

## Pass Criteria

Promise handling is id-linked, evidence-backed, conditional, and consistent with the existing canonical files.
