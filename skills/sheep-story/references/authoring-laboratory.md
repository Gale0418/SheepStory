# Authoring Laboratory

## Purpose and Boundary

The Authoring Laboratory is a small, reviewable experiment layer for exploring story possibilities without changing canon. It supports reader simulation, non-canon character work, alternate takes, and bridge writing. It is Markdown-only and contract-only: do not build a database, WebUI, runtime, or parser to make it work.

Laboratory output is advisory evidence, not story truth. Canon remains in the approved story-project files and is changed only through the existing memory authorization flow.

## Evidence Protocol

Every lab note records:

- the question and bounded input
- the lens or reader role used
- an observation anchored to supplied text or approved state
- evidence location or excerpt reference
- uncertainty and competing interpretations
- disagreement, including a minority reading when one exists
- a recommended next action and whether it needs approval

Do not convert a majority response into canon. Consensus can identify a useful signal; it cannot prove authorial intent, continuity, or a required emotional response. A missing reaction is an observation, not permission to invent a fix.

## Sandbox Isolation

Use explicit labels such as `lab/reader-simulation`, `lab/character-non-canon`, `lab/alternate-takes`, and `lab/bridge-writing`. Each experiment names its source snapshot, input scope, and output status. Lab files must not be linked as canon sources, copied into `story.md`, or used to silently update character, timeline, promise, or world state.

The handoff is one of:

- `advisory`: observation only
- `proposal`: a candidate routed through Cockpit review
- `discarded`: experiment retained only for audit or removed by the owner
- `promoted-with-approval`: explicitly accepted through the normal canon workflow

No lab result may promote itself, and no experiment may mutate a canonical file.

## Reader Simulation

Simulate more than one reader lens when the question is interpretive: for example, first-pass clarity, emotional tracking, continuity-sensitive reading, and skeptical reading. Keep each response separate before summarizing. Report convergence, meaningful disagreement, and what the text actually supports. A reader simulation should identify where a reader might infer, wait, distrust, or remain uncertain; it must not prescribe a single correct reaction.

## Non-Canon Character Lab

Use a clearly non-canon character card to test voice, desire, contradiction, boundary, and scene pressure. Mark all invented details `sandbox-only` and identify the canon facts it must not overwrite. The lab may reveal a useful contrast or expose a missing constraint, but it cannot establish a relationship, capability, backstory, or outcome without an approved proposal.

## Alternate Takes

Store alternate openings, beats, endings, and tonal passes as named candidates with a shared source snapshot. State what varies, what remains invariant, and what evidence supports each take. Alternates are not competing canon and must not be merged automatically. Select one only after comparing continuity effects, cost, voice, promise handling, and unresolved risks.

## Bridge Writing

Bridge writing fills a bounded gap between two known endpoints. Name the source endpoint, destination endpoint, required invariants, allowed local invention, and unresolved seams. A bridge can propose connective action or a transition, but it cannot smuggle in a new reveal, capability, promise, or timeline event. If the endpoints conflict, stop and report the contradiction instead of smoothing it over.

## Review and Promotion

Before any promotion, an editor checks evidence, dissent, sandbox labels, provenance, continuity effects, and authorization. The promotion record points to the single canonical destination; it does not duplicate the truth inside the laboratory.
