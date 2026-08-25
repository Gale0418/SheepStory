# Project Recovery and Runs

## Purpose and Scope

This reference defines a contract for safe project recovery and inspectable authoring runs. It is not an implementation plan for a database, WebUI, runtime, parser, or import service. A Markdown-only project may document the contract and an operator may perform each approved step manually.

## Import Preview and Quarantine

An import begins with a read-only preview: source identity, file list, encoding, detected format, likely project scope, and possible canon targets. Unknown, malformed, duplicated, or conflicting material goes to a quarantine area with its original text and provenance. Preview must not write canon, alter paths, or infer a merge.

Quarantine records why an item was held, what evidence is missing, and the next review action. A quarantined item may be rejected, repaired in a sandbox, or proposed for an authorized destination. Import success means a reviewed plan exists, not that canon changed.

## Run Trace

Each run manifest records run id, operator, intent, input snapshot, selected references, context budget, actions attempted, outputs, warnings, failures, and authorization boundary. Trace claims must distinguish observed tool output from interpretation. A partial run stays partial; do not report completion because a later step was skipped.

## Snapshots and Rollback

Before an authorized write, record a named snapshot of affected canonical files, their ownership, current hashes or stable identifiers, and the approval that permits the write. By default, an approved apply creates a new revision; it must never overwrite a file in place. Rollback restores only the affected files from a verified snapshot and records who requested it, why, what was restored, and what remains unresolved. It must not delete unrelated user work or rewrite history invisibly.

### Post-Snapshot Current-Hash Divergence Guard

Immediately before applying, re-read the owned target files and compare their current hashes with the hashes captured in the snapshot. If any post-snapshot current-hash diverges, ownership is unclear, or the same file has a subsequent user edit, stop without writing. Do not overwrite in place. Require a manual three-way review of snapshot, current file, and proposed revision; produce a new revision only after that review and renewed authorization.

## Safety Boundary

Recovery operations are bounded by explicit paths, ownership, approved scope, and reversible steps. No auto-merge, auto-promotion, hidden overwrite, in-place overwrite, destructive cleanup, or external dependency is implied. A parser may report syntax and structural observations, but it must not decide canon, authorship, intent, or epistemic status. When provenance, ownership, or scope is missing, stop at preview or quarantine.

## Contract Status

Use `previewed`, `quarantined`, `awaiting-approval`, `applied`, `rolled-back`, or `blocked` as operational statuses. These statuses describe the run, not the truth of the story. A recovery contract is complete only when the trace, snapshot boundary, approval, and post-action validation are recorded.
