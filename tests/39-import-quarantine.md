# Import Preview and Quarantine Behavior

## Prompt

```text
Read tests/fixtures/authoring-lab-forward-fixture.md section import-039. Fixture: source_id=import-039; revision=rev-01; anchor=file:chapter-03; original_bytes_hash=sha256:bytes-039; encoding_hash=sha256:encoding-039.
Preview this import containing known, unknown, malformed, and conflicting material. Report source identity, encoding, scope, likely destinations, and quarantine reasons without writing canon. Repeat the preview to check idempotence and require zero-write preview behavior.
```

## Expected Good Behavior

- Produce a read-only preview before any import action.
- Preserve original bytes, encoding hash, and source identity so a repeated preview is idempotent.
- Preserve source identity, encoding, scope, and original text for quarantine.
- Confirm the preview has zero writes, including no path or timestamp changes.
- Quarantine unknown, malformed, duplicated, or conflicting material.
- Offer review actions without inferring a merge or canonical destination.

## Bad Behavior To Reject

- Import directly into story.md before review.
- Drop original bytes or encoding hash, making a repeated preview non-idempotent.
- Drop malformed content or its provenance.
- Write a quarantine marker or canon file during a supposedly zero-write preview.
- Treat filename similarity as permission to merge.
- Report import success when only a preview exists.

## Pass Criteria

Preview and quarantine boundaries are observable through evidence and context, reversible, provenance-preserving, and independent of a fixed import format.
