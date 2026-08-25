# Authoring Laboratory Forward Fixture

This fixture is test evidence, not canon. All hashes below are stable fixture identifiers rather than claims about a live project.

## scene-030 — Ambiguous Opening

- revision: `rev-07`
- anchor: `scene:opening-line`

> 鐘在她碰到門以前響了。米拉停住，望向空無一人的塔頂，然後把那封信塞得更深。「至少它還不知道我的名字。」她說。

## scene-031 — Sandbox Boundary

- revision: `rev-03`
- anchor: `paragraph:2`
- canon: 米拉尚未離城；信仍由米拉持有；她不會飛行。
- experiment: 探索「米拉燒掉信並從城牆躍下」的戲劇效果。

## scene-032 — Character Lab

- revision: `rev-05`
- anchor: `dialogue:4`
- approved character facts: 阿岑怕欠人情；說謊時會過度解釋；無戰鬥訓練；不知道鐘的用途。
- line: 「我只是剛好經過。真的。跟那口鐘完全沒有關係。」
- pressure: 衛兵要求他當眾敲鐘。

## scene-033 — Alternate Takes

- revision: `rev-02`
- anchor: `beat:3`
- invariant: 米拉持有信；阿岑不知道內容；鐘尚未敲響；promise `P-BELL` remains open.
- base beat: 米拉必須決定是否把信交給阿岑。

## bridge-034 — Known Endpoints

- revision: `rev-04`
- anchor: `endpoint:A-to-B`
- endpoint A: 09:00，東門；受傷信差徒步，持有唯一鑰匙。
- endpoint B: 12:00，北站；信差仍持有鑰匙，傷口未治療。
- constraints: 步行至少四小時；沒有車、傳送或幫手的既定證據。

## state-035 — Competing Claims

- revision: `rev-06`
- anchor: `claim:bell-status`
- C1: 「鐘已封印」；origin=user；source=`story.md#離城`；status=verified.
- C2: 「鐘可能只是被雨淋壞」；origin=model-inference；source=`chapter-02.md#雨`；status=inferred.
- C3: 「封印由米拉解除」；origin=unknown；source=none；status=unknown.

## timeline-036 — Events

- revision: `rev-03`
- anchor: `event:departure`
- E1: 08:55 米拉在東門拿到鑰匙；source=`chapter-03.md#交付`.
- E2: 約 09:00 鐘聲響起；location unknown；participants unknown；source=`chapter-03.md#鐘聲`.
- E3: 09:00 米拉離城；source=`chapter-03.md#離城`.
- proposal only: E2 caused E3.

## promise-037 — Existing Promise

- revision: `rev-08`
- anchor: `promise:bell-vow`
- id: `P-BELL`
- lifecycle: open
- setup evidence: `chapter-01.md#誓言` — 米拉答應鐘響時回塔。
- chapter evidence: `chapter-03.md#離城` — 她聽見鐘聲仍離開。
- closure evidence: none.

## issue-038 — Editorial Conflict

- revision: `rev-02`
- anchor: `issue:timeline-order`
- evidence A: `story.md#離城` says sealing happened before departure.
- evidence B: `timeline.md#E3` places sealing after departure.
- owner: unassigned.
- status: open.

## import-039 — Recovery Preview

- revision: `rev-01`
- anchor: `file:chapter-03`
- source encoding: UTF-8 with BOM
- original bytes id: `sha256:bytes-039`
- entries: valid `chapter-03.md`; duplicate id `E3`; malformed frontmatter `character-mira.md`; stale export `book.txt`; unknown `notes.bin`.
- project files before preview: unchanged.

## run-040 — Diverged Rollback

- revision: `rev-09`
- anchor: `file:continuity/state.md`
- snapshot hash R0: `sha256:state-040-r0`
- authorized agent edit produces R1: `sha256:state-040-r1`
- later user edit produces current R2: `sha256:state-040-r2`
- affected file: `continuity/state.md`
- context budget: fixture section `run-040` plus recovery/run references only.
- approval record: `approval-040-r1` authorizes the R0→R1 proposal only.
- user edit after snapshot: 「米拉把鑰匙交給阿岑。」

## scene-041 — Quiet Reveal

- revision: `rev-05`
- anchor: `scene:reveal-turn`

> 米拉替阿岑重新纏好繃帶。兩人沒有談鐘，只聽雨落在鐵皮上。阿岑準備離開時，才把一直握緊的手攤開：掌心有一小片鐘上的封蠟。

## branch-042 — Extension Candidate

- revision: `rev-03`
- anchor: `choice:gate`
- parent: `snapshot-R3`
- invariants: 米拉不能飛；P-BELL remains open；不得新增戀愛關係。
- candidate: 讓角色在城門選擇返回鐘塔或繼續離城。
- allowed output path: `notes/noncanon/branches/branch-042.md`.

## project-043 — Parser Boundary

- revision: `rev-02`
- anchor: `file:story.md:heading-1`
- context budget: 3 sections.
- loaded: this section, `state-035`, `timeline-036`.
- omitted: 100 unrelated notes.
- prose: 「當然，鐘自己走下塔樓了。」阿岑看著泥地上沒有腳印的巨大凹痕。米拉把信交給她；但「她」可能指衛兵，也可能指剛抵達的塔守。

## conflict-044 — Multiple Sources

- revision: `rev-11`
- anchor: `claim:bell-sealed`
- `story.md#離城`: 鐘在離城前已封印。
- `continuity/state.md#鐘`: 離城時鐘仍開啟。
- `plot/timeline.md#E4`: 離城發生在封印之前。

## ledger-045 — Structural Validator Input

- revision: `rev-04`
- anchor: `claim:ids`
- duplicate event ids: `E7`, `E7`.
- verified claim `C7`: source missing.
- inferred claim `C8`: evidence is only 「月亮吞下了鐘聲」.
- event order: `E8 before E9` and `E9 before E8`.
- terminal promise `P9 paid`: closure evidence missing.
- validator version: `structural-v1`.
- finding codes: `VAL-E001 DUPLICATE_EVENT_ID`; `VAL-C001 VERIFIED_CLAIM_SOURCE_MISSING`; `VAL-T001 EVENT_ORDER_CONFLICT`; `VAL-P001 TERMINAL_PROMISE_CLOSURE_MISSING`.
- finding order: `finding_code`, then `entity_id`, then `source_pointer`.
