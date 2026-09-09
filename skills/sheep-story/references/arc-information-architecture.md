# Arc Information Architecture (篇章跨章資訊架構)

## Purpose (目的)

篇章跨章資訊架構用於管理長篇與單元劇故事中資訊的跨章流動。重點在於防止中段線索無疾而終（資訊死路），以及防止高潮與結尾前夕一次性暴塞大量必要前置資訊（Lore Dump / 資訊債暴落）。

本文件為諮詢性指引（Advisory Guidance），不設定每章揭露數、固定字數或假 KPI。

只在多章大綱、完整篇章審查或明確的資訊集中問題中載入；短篇局部改寫不必建立表格。先確認作品承諾的閱讀體驗、評估範圍、實際載入章節與來源版本。作品評論或本次反例只是診斷線索，不能視為所有讀者的共識。

## Core Principles (核心原則)

### 1. 前置依賴與知識分離 (Prerequisite Dependencies and Epistemic Split)
- **必要前置資訊依賴 (Prerequisite Information Dependency)**：高潮與結尾解謎或重大決策所需的規則、事實、物件或關係，必須有前置鋪陳（Setup / Grounding）。
- **知識分離**：明確區分「讀者知道」、「角色知道」、「雙方推論」與「雙方未知」。
- **Setup ≠ 提前洩露出答案**：早期鋪陳（Setup）旨在建立理解條件與合理世界規則，絕不等於提早破雷或揭露故事核心謎底。

### 2. 資訊債的精準定義 (Reveal Debt Definition)
- **Reveal Debt (揭露債)** 僅指「高潮/關鍵轉折發生前，尚未建立之必要理解前提（Essential Prerequisites）」，**絕對不等於**「所有尚未解答的懸念或未解謎團」。
- 故事允許且鼓勵保留合理的未解謎團（Intentional Ambiguity / Open Threads）。
- **嚴禁數字 KPI**：不設定任何揭露百分比或每章揭露數量。

### 3. 章節刪除思想實驗 (Chapter Deletion Thought Experiment)
- **刪章測試**：嘗試在思想實驗中刪除某一章節，檢視後續章節在以下維度是否產生**必要的改動**；不要求不可逆：
  - 信念 (Belief)
  - 關係 (Relationship)
  - 資源 (Resource)
  - 情緒 (Emotion)
  - 理解前提 (Understanding)
- **單元劇與慢熱合測**：章節可以靠單章體驗、氛圍、恢復或主題對照成立，前提是符合已核准的 reader promise。「沒有跨章連動」不是自動失敗；但也不能只貼日常或慢熱標籤，就豁免長期未推進的核心承諾。指出具體體驗與證據，缺少承諾資料時保留競爭解讀。

### 4. 連續揭露與情感承載 (Back-to-Back Reveals)
- 當故事出現連續重大揭露（Back-to-back Reveals）時，關鍵不在於「強制冷卻或固定停頓幾章」，而在於角色是否面臨**抉擇 (Choice)** 或付出了**情緒後果 (Emotional Consequence)**。
- 同時檢視讀者是否有足夠線索更新理解，以及新理解何時改變選擇、壓力或關係。震驚可以刻意延後反應；記錄預定後果位置，不強迫每個揭露立即演出情緒。先前已建立且可以運用的規則在結尾重新組合，不等於資訊債。

### 5. 上下文不完整限制 (Partial Context Ceiling)
- 若分析僅基於部分章節（Partial Context），評估報告必須標記 `result-completeness: partial`，**絕對不可斷言**「前期完全沒有伏筆或鋪陳」。

### 6. 諮詢性邊界 (Advisory Boundary)
- 所有分析與建議均為 Advisory，不得自動修改故事 Canon、自動刪除章節或強制修改大綱。

### 7. 沿用既有 Promise Ledger
- 若專案已有 Promise Ledger，引用其實際 ID 與既有狀態；狀態契約依 `story-state-ledgers.md` 與原紀錄，不在此新增或猜測枚舉。沒有 ledger 的簡單評估可引用章節位置，不要求新建一套資料系統。

## Check Ledger Integration (檢查點整合)

在 Outline Gate 與 Chapter Contract 中使用下列質化資訊欄位：

```markdown
## Arc Information Alignment
- Prerequisite Needed: [高潮/轉折所需之必要理解]
- Source / Grounding Chapter: [先前著陸之章節或待鋪陳章節]
- Reader vs Character Split: [讀者已知 / 角色已知 / 認知差]
- Deletion Impact: [刪除本章對信念/關係/資源/情緒/理解之影響，或標記為 Episodic/Atmospheric]
- Deferred Understanding: [尚欠的必要理解、依賴的揭露、預計處理位置，或無]
```

## 反向依賴與分布檢查

從重大揭露或關鍵決策反推：讀者需要先理解哪些概念？哪些只是線索出現、哪些已能形成可用模型？標明實際章節證據或待鋪陳位置，區分既有事實與提案。

| 單元／來源 | 讀者進場理解 | 角色已知／推測 | 必要前提與依賴揭露 | 承諾進展或獨立體驗 | 揭露後果／反應位置 | 尚欠理解與處理窗口 |
|---|---|---|---|---|---|---|

當多項尚欠理解彼此依賴、集中於逼近的 payoff window，說明哪個理解步驟可能失效；不以線索數量、字數或總資訊量判定。提出最小可選修法：把規則放進早期事件的後果、讓既有單元承接關係變化、合併重複功能、減少非必要依賴，或保留刻意密集揭露並確認後續消化空間。列出修法影響與要保留的體驗，不直接改 canon。
