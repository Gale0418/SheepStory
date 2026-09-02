# Story State Ledgers

## Purpose

State ledgers make continuity claims and their history inspectable while preserving a single canon source. They are structured Markdown projections for review, not a second story bible. A ledger may point to canon and propose a change, but it must never silently become canon.

## Single Canon Source

The approved story-project files remain the only canonical source. Ledger rows carry a `source`, `status`, and `provenance` link. When two rows disagree, preserve both claims as competing evidence, flag the editorial issue, and request a decision. Do not resolve a conflict by choosing the newest row or the most popular interpretation.

## Claim Provenance Ledger

Track each meaningful claim with:

- claim identifier and concise wording
- kind: canon, inference, proposal, or unknown
- source file, chapter/scene location, and evidence excerpt or pointer
- origin: user supplied, approved draft, observed text, or model inference
- confidence and competing reading
- first seen, last checked, and affected entities
- promotion status and authorization record

`inferred` and `unknown` are epistemic labels, not weaker canon. They remain outside canon until confirmed. A claim without evidence is a question or issue, not a fact.

## Event and Timeline Ledger

Record events with event id, relative or explicit time, location, participants, trigger, consequence, and evidence source. Preserve ordering uncertainty when exact time is unknown. Distinguish an observed event from a proposed connective event. A timeline row can expose a contradiction; it must not invent travel time, simultaneity, or causality to hide one.

## Promise and Foreshadow Reuse

Reuse the existing `continuity/promises/` lifecycle and promise files. A ledger references the promise id, current status, setup evidence, expected or acceptable transformation, and closure evidence. Do not create a parallel promise vocabulary or duplicate open questions in a promise row. Apply the existing transitions: `proposed`, `open`, `advanced`, `reframed`, `paid`, `delayed`, `contradicted`, `intentionally-unresolved`, and `retired`.

For story-bearing foreshadowing, preserve:

- the underlying approved canon / delegated reveal boundary
- the exact chapter or scene where the setup first entered the text
- the setup evidence that was actually visible at that time
- its natural first-read function
- its intended re-read function
- reader knowledge versus character knowledge
- later advancement, reinterpretation, or payoff evidence

Do not retroactively promote an unrelated old detail into a `verified setup` merely because a later twist can be made to fit it. If the detail was not tracked as a promise when written but genuinely supports the later reading, classify the connection as a retrospective observation until the author explicitly accepts that interpretation.

Use `earned-resolution-foreshadowing.md` and `templates/cockpit/foreshadowing-resolution-audit.md` for major reveal or climax fairness rather than expanding the state ledger into a plot-theory database.

## Resolution Causality Evidence

For a controversial or high-stakes resolution, preserve evidence for the mechanism rather than only the final label:

- decisive resource / rule / capability and where it was established
- who created the decisive option
- who recognized and acted on it
- important character mistake and its stated causal basis
- outside intervention or coincidence and what agency remained afterward
- promised climax modality versus actual deciding mechanism when they differ

Do not record `hero won because clever` or `villain lost because arrogant` without observable support. Analytical judgments remain review evidence, not canon.

## Editorial Issue Ledger

Issues are review work, not canon. Each issue records id, severity, affected claim/event/promise, evidence, competing interpretations, blocking question, owner, status, and resolution link. `open`, `needs-decision`, `accepted-risk`, and `resolved` describe editorial state; they do not assert a story fact.

Useful resolution-related issues include:

- `unearned-resolution`
- `competence-collapse-risk`
- `climax-modality-mismatch`
- `invisible-rule-or-culprit`
- `retcon-as-foreshadowing-risk`
- `causal-credit-mismatch`

These are diagnostic labels only. The text and approved canon decide whether a repair is needed.

## Deterministic Validator Boundary

A deterministic validator may check only explicit structure: required fields, unique ids, allowed status values, resolvable references, declared event order, source presence for `verified` claims, and closure evidence for terminal promise states. Given the same snapshot and configuration, it must return the same ordered findings and exit status.

It must not infer events from prose, interpret irony or metaphor, decide which conflicting claim is true, promote an inference, determine whether a twist is satisfying, or repair canon. Structural findings use stable codes and source pointers; semantic uncertainty remains an editorial issue for human or model review.

Freeze the finding-code table and ordering rule as part of the validator version. The minimal contract sorts by `finding_code`, then `entity_id`, then `source_pointer`; changing a code or sort key is a versioned contract change, not a harmless wording variation.

## Update Discipline

Read project brief and canonical state first. Produce a ledger patch containing only observable changes, provenance, unresolved contradictions, and the proposed canonical destination. Apply only after the user-authorized memory flow; then re-read affected files and verify that no unrelated canon was rewritten.
