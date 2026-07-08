# Outline Gate

## Purpose

The outline gate prevents the agent from rushing into prose before the story logic is clear.

The agent must discuss the outline first, then wait for explicit user approval before drafting.

## Mandatory Rule

Never draft full prose before the outline is approved.

## What Counts as Approval

Explicit approval examples:

- 「可以，開始寫」
- 「照這個寫」
- 「大綱 OK」
- 「確認，動筆」
- `Approved. Draft it.`
- `Looks good, write the scene.`

Not approval:

- 「嗯嗯」
- 「好像可以」
- 「有趣」
- 「繼續想」
- `maybe`
- `go on` when the user appears to mean more planning

## Required Outline Fields

For each chapter or scene, produce:

```markdown
## Proposed Outline

### Scene / Chapter Goal
What must change by the end?

### POV
Who is the viewpoint character? What do they know and not know?

### Location
Where does the scene happen? What constraints does the location create?

### Continuity State
What facts from earlier chapters matter here?

### Beats
1. Opening pressure
   - Purpose:
   - Desire:
   - Obstacle:
   - Cost:
   - Turn:
   - State change:

2. Escalation
   - Purpose:
   - Desire:
   - Obstacle:
   - Cost:
   - Turn:
   - State change:

3. Consequence / hook
   - Purpose:
   - Desire:
   - Obstacle:
   - Cost:
   - Turn:
   - State change:

### Open Questions
What should the user decide before prose exists?
```

## Gate Decision

After creating the outline, stop and ask:

```text
要照這個大綱動筆嗎？還是要先改？
```

Do not draft until the user explicitly confirms.

## Why This Exists

AI tends to assume it understands the story after a few cues. This is dangerous. The outline gate forces the agent to expose assumptions before they turn into 3,000 words of wrong prose.
