# MC-019：舊規則審查、本機安裝與 main 保存

## Summary

使用者授權將程式碼送 CodeRabbit、檢查更早的內容、只修確認成立的問題，並保存 Git／本機套件／GitHub main。採隔離審查副本，避免讓圖片、大型輸出或剛審過的文件再次占用差異額度。

## Completed

- 第一輪：91 個文字檔、193222 bytes；CodeRabbit 實際 reviewedFiles 與選檔清單相符。參考基準為隔離副本 5d7835783e90e1187d00bc14a954780a74b79aa4。原始內容與上下文保留，沒有改造測試內容來誘導通過。
- 5 個確認成立的 issues：2 major、3 minor，均最小修正，見下表。修正差異與 cachebuster 共 8 檔送第二輪，沒有重送 91 檔。
- 初次啟動因隔離 repo 無預設 baseBranch，在 gitService.getBranchInfo 階段失敗，尚未連上審查服務；設定該隔離 repo 的 coderabbit.baseBranch=main 後才開始第一輪。沒有改動主 repo 的審查設定。
- 本機 SheepStory 原為七月實體快取，兩個 source junction 均正確指向本 repo。使用官方 helper 更新 cachebuster，再執行 codex plugin add sheep-story@local；安裝版 0.1.0+codex.20260909134058 的 190 個交付檔案與來源 hash 一致。
- 保存既有兩份 reference 的文字澄清。Mission Center 原 project 活動歷史另存 2026-09-09-project-history-preserved.md；sync 產生的摘要與舊歷史分開保存。
- MissionCenter/.mission-center/ 為本機 operation receipts，加入忽略規則，內容保留於本機。

| 嚴重度 | 位置 | 已驗證問題與修正 |
|---|---|---|
| minor | docs/quality-checklist.md | 測試範圍停在 26；補列 27–55 與 regression runner，明確區分結構與行為驗證。 |
| minor | examples/usage-prompts.md | 每 beat 不可逆與現行規則衝突；改為有意義推進，必要時才使用場景／章節不可逆轉折。 |
| major | project-recovery-and-runs.md | stable file ID 無法檢查內容變動；要求每檔可比較的內容識別，缺失時零寫入，同步 run-manifest 與 Test 40。 |
| minor | tests/38-editorial-issues.md | 重複且不明確的 validation 文字；明定 resolution link、validated status 與 validation evidence。 |
| major | templates/cockpit/export-prompt.md | 遺漏伏筆、promise、禁止捷徑與結局合約；補欄位並保留額外已核准限制，明列 ID／狀態／證據及保密限制，也修正每 beat 不可逆。 |

## Unfinished

- MC-011 與 MC-018 是先前里程碑的 Review，未被本次維護改判完成。
- main 推送完成後由 MC-019 狀態與本次交付確認；舊任務不受影響。

## Risks

CodeRabbit 與有限模型抽驗不是完整敘事品質保證。每小時至多三輪、每輪至多 150 檔；本批前兩輪為 91 檔與 8 檔，第三輪只複查兩個場景質感條件，之後不再送第四輪。舊版穩定識別碼不能證明內容未被修改；缺少原快照內容時不得拿現在 hash 冒充舊 hash。

## Smoke tests

- tests/run_static_checks.ps1 與 tests/run_regression_checks.ps1：修正後通過。
- quick_validate.py（Python UTF-8）：通過；來源與安裝副本的 plugin validator 通過。
- 獨立 Luna 只讀 recovery 指引與模板，對「只有 file ID」及「H0→H1」兩例均回覆停止寫入，不覆蓋後續使用者修改。匯出檢查指出保密／核准與 promise 識別欄位的人工轉錄風險，已補明。
- Mission Center doctor：通過；舊任務缺 completion passport 仍列 legacy warnings，沒有偽造補發。
- 本機安裝：190 個交付檔案 hash 相符；新 task 才會載入更新的技能上下文。

## Retro

不為湊滿 150 檔犧牲上下文或重送已檢查的大文件。先以真實來源篩選，再核對 CodeRabbit 的 reviewedFiles；修正後只複查差異。Mission Center 的 managed summary 會清空舊活動欄，因此歷史先保存，不能只靠摘要當唯一紀錄。

## Completion critic council

本次為既有 Markdown 契約與安裝同步的維護切片，未做遊戲體驗或高成本設計實驗；不建立額外正式 council runtime。CodeRabbit 發現、獨立唯讀案例與實際 smoke 證據分開記錄，不冒充先前里程碑尚未執行的正式 gate。

## 第一輪選檔清單

- .codex-plugin/plugin.json
- README.md
- docs/quality-checklist.md
- examples/usage-prompts.md
- examples/worked-outline-example.md
- skills/sheep-story/README.md
- skills/sheep-story/references/anti-ai-flavour.md
- skills/sheep-story/references/authoring-laboratory.md
- skills/sheep-story/references/cinematic-scene-texture.md
- skills/sheep-story/references/conflict-pressure.md
- skills/sheep-story/references/continuity-check.md
- skills/sheep-story/references/editorial-rewrite.md
- skills/sheep-story/references/genius-strategy.md
- skills/sheep-story/references/opposition-design.md
- skills/sheep-story/references/project-recovery-and-runs.md
- skills/sheep-story/references/source-map.md
- skills/sheep-story/references/story-cockpit-workflow.md
- skills/sheep-story/references/style-preservation.md
- skills/sheep-story/references/style-profile-to-the-stars-inspired.md
- skills/sheep-story/references/technical-explanation-voice.md
- skills/sheep-story/references/vocal-impact.md
- skills/sheep-story/references/voice-calibration.md
- skills/sheep-story/style-profiles/cinematic-hard-sf.md
- skills/sheep-story/style-profiles/dark-strategy.md
- skills/sheep-story/style-profiles/light-novel-dialogue.md
- skills/sheep-story/style-profiles/military-sf.md
- skills/sheep-story/style-profiles/quiet-emotional-detail.md
- skills/sheep-story/style-profiles/sheepstory-house-style.md
- skills/sheep-story/style-profiles/technical-first-person.md
- skills/sheep-story/style-profiles/zh-tw-fiction.md
- templates/cockpit/authoring-lab.md
- templates/cockpit/chapter-contract.md
- templates/cockpit/export-prompt.md
- templates/cockpit/idea.md
- templates/cockpit/plot-thread.md
- templates/cockpit/story-state-ledger.md
- templates/ops/extension-contract.md
- templates/ops/run-manifest.md
- templates/story-project/chapters/_template.md
- templates/story-project/story.md
- templates/story-project/worldbuilding/world-book.md
- tests/01-outline-gate.md
- tests/02-continuity-missing.md
- tests/03-too-peaceful.md
- tests/04-fake-genius.md
- tests/05-lore-dump.md
- tests/06-technical-decoration.md
- tests/07-dialogue-exposition.md
- tests/08-over-polish.md
- tests/09-quiet-scene.md
- tests/10-direct-dialogue.md
- tests/11-quick-mode.md
- tests/12-approved-outline.md
- tests/13-mixed-revision.md
- tests/14-document-framing.md
- tests/15-claim-preservation.md
- tests/16-adult-plain-language.md
- tests/17-minimal-no-op.md
- tests/18-vague-new-story.md
- tests/19-world-first-seed.md
- tests/20-character-first-seed.md
- tests/21-specified-foundation.md
- tests/22-optional-structure.md
- tests/23-coherent-opposition.md
- tests/24-capability-ceiling.md
- tests/25-promise-and-ending.md
- tests/26-project-only-constraint.md
- tests/27-vocal-impact.md
- tests/28-vocal-evidence-and-voice-signature.md
- tests/29-ritual-media-and-intensity.md
- tests/30-reader-consensus.md
- tests/31-lab-sandbox-isolation.md
- tests/32-non-canon-character-lab.md
- tests/33-alternate-takes.md
- tests/34-bridge-writing.md
- tests/35-claim-provenance.md
- tests/36-event-timeline-ledger.md
- tests/37-promise-ledger-reuse.md
- tests/38-editorial-issues.md
- tests/39-import-quarantine.md
- tests/40-run-trace-snapshot-rollback.md
- tests/41-pacing-reveal-advisory.md
- tests/42-extension-boundary.md
- tests/43-context-budget-parser-boundary.md
- tests/44-multiple-truth.md
- tests/45-deterministic-validator-boundary.md
- worked-examples/fake-genius-to-reasoning-chain.md
- worked-examples/lore-dump-to-scene-texture.md
- worked-examples/peaceful-scene-to-conflict-pressure.md
- worked-examples/polite-dialogue-to-subtext.md
- worked-examples/textbook-science-to-technical-voice.md


## 最終複查

第二輪（8 檔）提出 1 個 major：Scene Texture Plan 的觸發條件與品質清單不一致。核對 canonical SKILL 與 cinematic-scene-texture 後，將兩處統一為「設定、氣氛或世界觀對場景有實質影響時」，沒有把任何背景細節都升格成強制表單。第三輪僅審這 2 檔，CodeRabbit 回報 0 issues。所有成立問題已處理；本時段服務審查共三輪，未追加第四輪。
