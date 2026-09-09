<!-- mission-center-managed-summary v=1 -->
# 專案

- 專案: MissionCenter
- 目標: 在保留聲音型台詞能力的基礎上，建立可驗證、可回復且不污染 canon 的作者實驗室與故事狀態基座。
- 週期: 第三里程碑 Review｜契約與前向驗證完成，正式 critic gate 待預算
- 標籤: plan, execution, verification
- 活動紀錄:
  - 2026-08-25 10:37:01 +08:00｜變更：發布本地 Mission Center 並建立 MC-001～MC-006。｜原因：使用者核准 Epic 與首個里程碑。｜影響：允許開始最小文件與測試修改。
  - 2026-08-25｜變更：補入特色店家與怪異店員的刻意不協調例外。｜原因：使用者明確要求保留有場域或角色依據的奇怪帥台詞。｜影響：反濫用判準改為檢查是否有已建立框架，而非強制日常寫實。
  - 2026-08-25｜變更：完成 MC-002～MC-004 並記錄本地驗證。｜原因：reference、路由、驗收規格與回歸契約均已實作。｜影響：首個里程碑進入 Mission Center 收尾。
  - 2026-08-25｜變更：完成 MC-006 與首個里程碑 closeout。｜原因：Mission Center doctor 通過且所有本地驗證已有 canonical evidence。｜影響：MC-005 留在 Backlog，Epic 保持開放以等待真實使用回饋。
  - 2026-08-25｜變更：將 MC-005 升格為 In Progress，新增 MC-007～MC-010。｜原因：使用者明確要求跨領域、跨模型、可上網查證的全方位研究與改進。｜影響：啟動第二里程碑研究波，先研究再實作。
  - 2026-08-25｜變更：完成第二里程碑與 MC-001、MC-005、MC-007～MC-010。｜原因：三條研究 lane、跨模型盲測、GitHub prior art、規則整合與 Test 28～29 均完成。｜影響：SheepStory 現以多訊號證據判讀非詞彙聲音，並支援聲音簽名、面具循環、儀式詠唱、媒介分流與強度代價。
  - 2026-08-26｜變更：建立 MC-011～MC-018 第三里程碑。｜原因：使用者要求把相近小說輔助能力全部做成多角度、可驗證的最小實驗。｜影響：核心維持 Markdown 單一真源；reader/character/alternate/bridge 為非 canon 實驗室；import/rollback/autonomous agents 僅建立安全契約與擴充邊界。
  - 2026-08-26｜變更：完成第三里程碑的規則、模板、Tests 30～45、共同 fixture 與 6 案語義 forward。｜原因：紅隊要求把抽象行為規格補成可獨立執行的具體案例，並修正 promise lifecycle、ledger 欄位與 rollback divergence。｜影響：MC-013～MC-017 完成；MC-011、MC-018 留在 Review，因正式 completion critic 需要尚未提供的數字預算。
  - 2026-08-26｜變更：完成 CodeRabbit 兩輪 fix-review。｜原因：使用者授權將篩選後的 36 個文字變更交給 CodeRabbit，並要求只修真正成立的問題。｜影響：修正 10 個契約與 runner 問題；第二輪 0 issues；大型輸出與 Mission Center 衍生檔未送審。
- 開放問題:
  - 若要把第三里程碑正式標記 Done，需要提供 completion critic 的總 token、單席 token、工具呼叫與 wall-clock 預算；目前不把一般子代理紅隊冒充正式 Mission Center critic gate。
