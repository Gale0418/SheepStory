# 冒煙測試

| 日期 | 對應任務 ID | 測試內容 | 測試方式 | 預期結果 | 實際結果 | 通過 / 失敗 | 類型 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2026-08-25 | MC-002 | SheepStory 技能結構與 frontmatter | `python -X utf8 .../quick_validate.py skills/sheep-story` | validator 回報技能有效 | `Skill is valid!` | 通過 | automated |
| 2026-08-25 | MC-003 | 既有靜態契約 | `tests/run_static_checks.ps1` | 所有靜態檢查通過 | `SheepStory static checks passed.` | 通過 | automated |
| 2026-08-25 | MC-004 | Vocal Impact 新舊回歸契約 | `tests/run_regression_checks.ps1` | 既有行為與新增聲音型台詞契約全部通過 | `SheepStory regression checks passed.` | 通過 | automated |
| 2026-08-25 | MC-004 | Patch 空白與衝突檢查 | `git diff --check` | 無 whitespace error | exit 0；僅有未來 LF/CRLF 轉換提示 | 通過 | automated |
| 2026-08-25 | MC-006 | Mission Center 一致性 | `doctor_mission_center.py .` | canonical 與 derived 狀態一致 | `MissionCenter doctor: OK` | 通過 | automated |
| 2026-08-25 | MC-010 | Test 28～29 與完整靜態契約 | `tests/run_static_checks.ps1` | 測試編號 9～29 與必要檔案均存在 | `SheepStory static checks passed.` | 通過 | automated |
| 2026-08-25 | MC-010 | 聲音證據、聲音簽名、儀式、媒介與強度代價回歸 | `tests/run_regression_checks.ps1` | 正反行為規格與可觀察推理契約全部通過 | `SheepStory regression checks passed.` | 通過 | automated |
| 2026-08-25 | MC-009 | SheepStory skill 結構驗證 | `python -X utf8 .../quick_validate.py skills/sheep-story` | validator 回報技能有效 | `Skill is valid!` | 通過 | automated |
| 2026-08-25 | MC-010 | 最終 patch 空白檢查 | `git diff --check` | 無 whitespace error | exit 0；僅有未來 LF/CRLF 轉換提示 | 通過 | automated |
| 2026-08-25 | MC-007 | 三條研究 lane 與來源篩選 | 語言／音聲、互動媒介、Antigravity 盲測研究回報交叉比對 | 主要結論具來源、限制、風險與可操作決策 | 三 lane 完成；未傳輸本機私有檔案，研究限制已保留 | 通過 | manual |
| 2026-08-25 | MC-008 | 分類模型可操作性 | 以 Test 28～29 正反案例檢查多訊號、聲音簽名、面具與儀式模型 | 可區分有效怪腔／詠唱與裝飾性噪音 | 正反案例具場景證據、未知處理與後果判準 | 通過 | manual |
| 2026-08-25 | MC-005 | 第二里程碑整合驗收 | 研究紀錄、規則 diff、Test 28～29 與完整 regression 合併檢查 | 研究可追溯並轉化為技能行為 | 文件、路由、前向案例與回歸契約一致 | 通過 | manual |
| 2026-08-25 | MC-001 | Epic 完成驗收 | MC-002～MC-010 狀態與所有 smoke evidence 檢查 | 所有必要子任務完成且驗證通過 | 8/8 tasks Done，無功能阻塞 | 通過 | manual |
| 2026-08-26 | MC-017 | Tests 30～45 與必要模板／references | `tests/run_static_checks.ps1` | 新增檔案、fixture 與測試編號完整 | `SheepStory static checks passed.` | 通過 | automated |
| 2026-08-26 | MC-012 | 跨模型與 GitHub 研究收斂 | 比對兩位獨立 Luna 專家、Chrome/GitHub prior art 與 Antigravity 已交付軌跡 | 形成 Core／Optional／Cockpit／Extension 分層與停止條件 | 研究矩陣、紅隊矩陣與 source map 一致；橋接權限阻塞已誠實記錄 | 通過 | manual |
| 2026-08-26 | MC-013 | 非 canon 作者實驗室 | Test 30～34 與共同 fixture 的規格／語義抽驗 | reader、character、alternate、bridge 保留 evidence、dissent 與 sandbox boundary | runner 通過；Test 30、31 語義抽驗 PASS | 通過 | mixed |
| 2026-08-26 | MC-014 | Ledger 與來源治理 | Test 35～38、44～45 與 ledger template 檢查 | lifecycle、provenance、multiple truth 與 deterministic boundary 一致 | runner 通過；Test 44、45 語義抽驗 PASS | 通過 | mixed |
| 2026-08-26 | MC-015 | Recovery 與 run safety | Test 39～40、run manifest 與 R0/R1/R2 fixture | preview 零寫入；divergence 時停止；rollback 不覆蓋後續 user edit | runner 通過；Test 40 語義抽驗 PASS | 通過 | mixed |
| 2026-08-26 | MC-016 | Pacing/reveal 與 extension boundary | Test 41～43、advisory/extension template 檢查 | qualitative evidence、context budget、parser 限制與 no-canon-mutation | runner 通過；Test 41 語義抽驗 PASS | 通過 | mixed |
| 2026-08-26 | MC-017 | 作者實驗室、ledger、recovery、pacing 與 extension 契約回歸 | `tests/run_regression_checks.ps1` | 正反規格、狀態欄位與安全邊界通過 | `SheepStory regression checks passed.` | 通過 | automated |
| 2026-08-26 | MC-018 | SheepStory skill 結構 | `quick_validate.py skills/sheep-story` | validator 回報技能有效 | `Skill is valid!` | 通過 | automated |
| 2026-08-26 | MC-018 | Patch 空白檢查 | `git diff --check` | 無 whitespace error | exit 0；僅有未來 LF/CRLF 轉換提示 | 通過 | automated |
| 2026-08-26 | MC-017 | 獨立語義 forward 抽驗 | Luna 依 Test 30、31、40、41、44、45 實際讀 fixture 並產生 SheepStory 回覆 | 假共識、sandbox 污染、回滾覆寫、KPI、重複真源與 parser 越界皆被拒絕 | 6/6 PASS；未寫入 canon | 通過 | manual |
| 2026-08-26 | MC-018 | CodeRabbit fix-review | 第 1 輪審查 36 個規則／模板／測試檔，修正成立的 10 個 issues；第 2 輪重審 | 所有成立問題修正後不再產生 issues | 第 1 輪 10 issues；第 2 輪 `CodeRabbit raised 0 issues.` | 通過 | external-review |
