# main 收斂與跨章資訊架構

## 範圍與決策

使用者於 2026-09-09 授權只保留 main、整合既有成果，並依「永遠的黃昏觀看集數」討論加入跨章資訊檢查；實作方案由代理選擇。這是技能文件／模板更新，不是觀看清單、小說 parser 或自動改稿程式。

採分支內容稽核、補足缺漏、保留祖先歷史，再刪除已整合分支名稱。直接刪除會漏掉忽略規則；重新套用所有分支內容則可能倒退 main 已有的後續修正。Git 的 ours strategy 僅用於已經逐一證實內容整合的分支，不拿它掩蓋缺漏。

## 分支內容證據

以下七組 tip 與 main 歷史中的對應提交，逐組 git diff 均為空；比較的是完整 tree，並非僅 git cherry 或提交標題。

| 遠端分支（省略 feature/） | 分支 tip | main 對應提交 |
|---|---|---|
| contrast-misunderstanding-card-research | 0b85625 | b4a4767 |
| earned-resolution-foreshadowing | 7fd9128 | 0a180d6 |
| ending-outcome-model | 951f00f | 939ceb9 |
| mask-dynamics-archetypes | 55af913 | 3fda8fc |
| origin-environment-advantage-model | f99d6c8 | b7ce8a1 |
| social-cognitive-character-model | 88581ac | 4539c39 |
| trait-expression-library | 8c4e896 | d5b3ca2 |

agent/repository-hygiene（f764109）的唯一增量是 17 行 .gitignore，原 main 未包含，需補入。本地 codex/pre-remote-sync-20260905（76d827b）已是 main 祖先。

本機歷史備份位於 `.git/sheepstory-consolidation-20260909/before.bundle`，已執行 bundle verify；同目錄 refs.txt 保存舊名稱與 SHA。備份不提交。原有 MissionCenter 與兩份敘事 reference 的未提交修改保留在工作目錄，不混入本次功能提交。

## 敘事設計與研究

三種方案比較：固定每章揭露配額容易誤傷慢熱；只加局部 lore dump 提醒抓不到全篇分布；因此採按需載入的跨章依賴診斷。編輯面檢查章節作用，理解面區分符號出現與可用前提，敘事面追蹤選擇／關係後果，反方檢查保護獨立體驗與刻意密集揭露。這些是分析視角，並非聲稱實際召集各領域真人專家。

- Gemini 提供設計審查與初稿；初稿曾過度覆寫既有文件，Codex 驗證發現後還原受影響的既有檔案，改為小幅接線。
- Luna 獨立稽核分支，另一個獨立 Luna 僅讀指引與原始案例，未取得預期答案，完成 A～E 行為驗證。
- [Sanderson 的 Promise / Progress / Payoff 講座](https://www.brandonsanderson.com/blogs/blog/brandon-sandersons-2025-guide-to-plot-lecture-2) 提供閱讀承諾與進展的創作觀點；採作啟發而非實證定律或固定公式。
- [Git 官方合併文件](https://git-scm.com/docs/git-merge) 說明 squash 不記錄 merge parent，以及 ours strategy 保留目前 tree 的行為。已用 Chrome 查核。

## 驗證與限制

獨立前向結果：A 指出第 9 章集中前置依賴與中段作用薄弱；B 保留晚餐、椅子、糧食串起的信任變化；C 保留已核准單元體驗；D 保留已有可用規則及延後情緒反應的密集揭露；E 標記 partial，不推斷前文不存在鋪陳。五例符合 Test 55 期望，這是有限模型抽驗，不是普遍品質保證。

新增文件保持 advisory，不設揭露密度 KPI、不自動刪章、不另建 promise lifecycle。既有 Test 41 保留。靜態 runner 僅驗證檔案與結構，不能證明敘事品質。

驗證命令：`tests/run_static_checks.ps1`、`tests/run_regression_checks.ps1`、以 Python UTF-8 模式執行 skill-creator 的 quick_validate.py，以及 git diff --check。最終執行結果與發布狀態由本次交付回報；MissionCenter 原有歷史任務不因本次工作被改判完成。

乾淨的 staged checkout 驗證發現兩個既有 regex 誤判：body-count 錯誤示例被當成正式主張，以及初讀／重讀跨行敘述無法匹配。修正測試後，乾淨副本的靜態與回歸檢查均通過，原本兩份 reference 的使用者修改未納入提交。UTF-8 skill validator 與 diff check 通過。

CodeRabbit 以原 main `0a180d6` 為基準審查本次提交，涵蓋新模組與 fixtures，提出 1 個 minor：Test 55 尚未接入規格驗證。已將它接入通用 regression runner，檢查案例與必要區段；沒有放入不相干的 character-engine runner。這項檢查仍只是規格完整性，不冒充五案例的行為驗證。
