---
type: ops-run-manifest
run-id:
status: previewed
operator:
ownership:
intent:
input-snapshot:
context-budget:
---

# Operations Run Manifest

## Import Preview / Quarantine

Source identity:
Detected scope:
Quarantined items:
Reason and missing evidence:

## Actions and Outputs

| Step | Action | Observed output | Interpretation | Warning / failure |
|---|---|---|---|---|

## Snapshot Boundary

Affected canonical files:
Owned paths:
Snapshot id / hash:
Snapshot current hashes:
Proposed new revision:
Approval record:

## Post-Snapshot Current-Hash Divergence Guard

Re-read current hashes immediately before apply. If a hash differs from the snapshot, ownership is unclear, or the same file has a subsequent user edit, stop with zero writes. Do not overwrite in place; require manual three-way review of snapshot, current file, and proposed revision.

## Rollback Plan

Before restoring each affected owned file, compare its current hash with the snapshotted or expected hash. Restore as a new revision by default, or use an explicitly authorized guarded atomic apply only when the hash still matches. On divergence, stop for manual three-way review. Record the resulting revision; do not delete unrelated work or overwrite a file in place.

## Post-Action Validation

## Authorization / Stop Condition
