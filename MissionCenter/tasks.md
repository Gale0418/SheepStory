# 任務

| ID | 標題 | 類型 | 父層 | 優先級 | 狀態 | 負責人 | 依賴 | 下一步 | 驗證方式 | 估時 | 標籤 | 備註 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| MC-001 | 補足低語意、高戲劇效能的聲音型台詞規則 | Epic | - | P1 | Done | Codex | - | 已完成 | 子任務通過回歸檢查並留下冒煙測試證據 | M | plan, execution | 第二里程碑已完成研究、規則整合與前向案例驗證 |
| MC-002 | 建立 Vocal Impact 通用參考規則 | Task | MC-001 | P1 | Done | Codex | - | 已完成 | 文件同時涵蓋戲劇功能、情境適配與反濫用護欄 | S | execution | 已納入特色店家、怪異店員與刻意不協調；未內建特定作品風格 |
| MC-003 | 接入 SheepStory 的撰寫、修訂與審查路由 | Task | MC-001 | P1 | Done | Codex | MC-002 | 已完成 | 入口能按需發現新 reference，且不讓所有對話強制載入 | S | execution | 已更新 SKILL、README 與 source map；維持漸進揭露 |
| MC-004 | 建立並執行聲音型台詞回歸驗證 | Task | MC-001 | P1 | Done | Codex | MC-002, MC-003 | 已完成 | 既有回歸與 skill validator 均通過 | S | verification | 靜態、回歸、validator 與 diff check 均通過 |
| MC-005 | 擴展跨類型聲音型台詞模型與前向案例庫 | Task | MC-001 | P1 | Done | Codex | MC-004 | 已完成 | 研究結論可追溯，並轉化為可觀察的技能行為與正反測試 | L | plan, execution, verification | 三條研究 lane、跨模型紅隊、網路與 GitHub prior art 已整合 |
| MC-006 | 收尾首個可驗證里程碑 | Task | MC-001 | P2 | Done | Codex | MC-004 | 已完成 | Mission Center 狀態與本地事實一致 | S | closeout | 已同步、通過 doctor 並建立 closeout；MC-005 保留為後續 Backlog |
| MC-007 | 研究非詞彙聲音、語助詞、韻律人格與儀式語言 | Subtask | MC-005 | P1 | Done | Codex | - | 已完成 | 每項主要主張有來源、證據類型、限制與信心標記 | M | plan | council_full；完成語言／音聲、互動媒介與 Antigravity 盲測紅隊 |
| MC-008 | 設計聲音簽名與詠唱的可操作分類法 | Subtask | MC-005 | P1 | Done | Codex | MC-007 | 已完成 | 分類法能區分有效怪腔、有效非詞彙聲音、有效詠唱與裝飾性噪音 | M | plan | 採多訊號證據、聲音簽名四層、面具循環與儀式功能模型 |
| MC-009 | 更新 SheepStory 聲音型台詞規則與路由 | Subtask | MC-005 | P1 | Done | Codex | MC-008 | 已完成 | 漸進揭露、不擴散為所有對話的必讀規則 | M | execution | 擴充既有 vocal-impact；未實作引擎 parser 或安裝相鄰專案 |
| MC-010 | 建立跨類型前向案例與回歸驗證 | Subtask | MC-005 | P1 | Done | Codex | MC-009 | 已完成 | 戰吼、慘叫、笑聲、怪腔、詠唱、儀式、特色店員及反例皆可判別 | M | verification | 新增 Test 28、29 與 Markdown 行為規格檢查，完整驗證通過 |
| MC-011 | 建立 SheepStory 作者實驗室與故事狀態基座 | Epic | - | P1 | Review | Codex | - | 等待具明確數字預算的正式 completion critic gate，或由使用者接受契約型 milestone | 候選能力皆有明確分層、canon 邊界與可觀察驗收證據 | L | plan, execution, verification | 文件／模板／fixtures／語義 forward 皆完成；未新增資料庫、WebUI、小說 parser 或自主改 canon runtime |
| MC-012 | 彙整跨模型、GitHub 與本機架構研究 | Task | MC-011 | P1 | Done | Codex | - | 已完成 | 至少兩個獨立專家與代表性 prior art 收斂出風險、分層與停止條件 | M | research, plan | Luna 架構與前向紅隊完成；Chrome/GitHub 研究完成；Antigravity 已交付但卡於本機橋接權限互動，未重送原任務 |
| MC-013 | 建立非 canon 作者實驗室規則 | Task | MC-011 | P1 | Done | Codex | MC-012 | 已完成 | 輸出保留來源、分歧與 hypothetical 狀態，且不污染 canon | M | execution | reader、character、alternate、bridge 已按需路由並隔離 |
| MC-014 | 建立故事狀態 ledger 與來源治理規則 | Task | MC-011 | P1 | Done | Codex | MC-012 | 已完成 | verified 必須有來源；inferred/unknown 不得升格；避免重複真源 | M | execution | 沿用既有 promise lifecycle；deterministic validator 僅檢查明確結構 |
| MC-015 | 建立匯入、執行追蹤、快照與回滾安全契約 | Task | MC-011 | P1 | Done | Codex | MC-012 | 已完成 | 預設零寫入或輸出新 revision；不得覆蓋使用者後續修改 | M | execution | 加入 R0/R1/R2 divergence guard 與人工 three-way review |
| MC-016 | 建立節奏揭露 advisory 與擴充邊界 | Task | MC-011 | P1 | Done | Codex | MC-012 | 已完成 | 不使用固定字數／比例 KPI；extension 不得繞過 approval 或寫 canon | S | execution | export、branching、autonomous agents 留在 opt-in extension |
| MC-017 | 建立 Tests 30–45 與 runner 契約 | Task | MC-011 | P1 | Done | Codex | MC-013, MC-014, MC-015, MC-016 | 已完成 | 16 個正反案例皆有具體 fixture，可由證據、狀態、權限與不變量判斷 | M | verification | runner 通過；獨立語義 forward 抽驗 6/6 通過 |
| MC-018 | 第三里程碑整合驗證與收尾 | Task | MC-011 | P1 | Review | Codex | MC-017 | 等待正式 completion critic 的數字預算或使用者接受契約型交付 | 所有本機檢查通過；剩餘 release gate 被明確記錄 | S | verification, closeout | 靜態、回歸、skill validator、diff、紅隊與語義 forward 均通過；未聲稱 runtime 已實作 |
