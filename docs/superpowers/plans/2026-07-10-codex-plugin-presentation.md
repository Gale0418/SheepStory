# Codex Plugin Presentation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 將 SheepStory 與 Codex Game Studios 正式登錄為帶圖標的本機 Codex plugins。

**Architecture:** 個人 marketplace 維持單一 `local` 目錄；每個 plugin 都有獨立的來源目錄、manifest、技能與資產。SheepStory 使用現有來源，Codex Game Studios 使用受版本控制且已驗證的維護來源；安裝快取只用於執行，不作為可維護來源。兩者均用 manifest 的 `interface` 資產欄位呈現圖標。

**Tech Stack:** Codex plugin manifest JSON、個人 marketplace JSON、既有 SVG 資產、Python plugin validator、Codex CLI。

## Global Constraints

- 不修改 `C:\\Users\\USER\\.codex\\plugins\\cache` 下的任何檔案。
- 不變更 `D:\\MyGame\\SheepStory` 的既有 SKILL、資產或未提交檔案。
- marketplace 必須保留現有順序，並含完整 `policy` 與 `category` 欄位。
- 所有 manifest 中的圖標路徑必須存在且相對於 plugin 根目錄。

---

### Task 1: 建立並驗證 Codex Game Studios 本機來源

**Files:**
- Create: `C:\\Users\\USER\\plugins\\codex-game-studios\\**`
- Test: `C:\\Users\\USER\\.codex\\skills\\.system\\plugin-creator\\scripts\\validate_plugin.py`

**Interfaces:**
- Consumes: 受版本控制的維護來源 `C:\\Users\\USER\\src\\codex-game-studios`，其 commit、manifest 版本與 validator 結果均已記錄
- Produces: 含 `.codex-plugin/plugin.json`、`skills/` 與 `assets/` 的本機 plugin 根目錄。

- [ ] **Step 1: 驗證缺少來源時會失敗**

Run: `python validate_plugin.py C:\\Users\\USER\\plugins\\codex-game-studios`
Expected: FAIL，指出目標目錄或 manifest 不存在。

- [ ] **Step 2: 複製已驗證的維護來源**

Run: 以 PowerShell 的 `Copy-Item -Recurse` 從 `C:\\Users\\USER\\src\\codex-game-studios` 複製到 `C:\\Users\\USER\\plugins\\codex-game-studios`。
Expected: 來源包含 SKILL、工作流程、資產和 manifest，且來源 commit 與記錄的 provenance 相符。

- [ ] **Step 3: 驗證新來源**

Run: `python validate_plugin.py C:\\Users\\USER\\plugins\\codex-game-studios`
Expected: PASS。

### Task 2: 驗證 SheepStory 與 marketplace 登錄

**Files:**
- Modify: `C:\\Users\\USER\\.agents\\plugins\\marketplace.json`
- Modify: `C:\\Users\\USER\\plugins\\sheep-story\\.codex-plugin\\plugin.json`
- Modify: `C:\\Users\\USER\\plugins\\codex-game-studios\\.codex-plugin\\plugin.json`
- Test: `C:\\Users\\USER\\.codex\\skills\\.system\\plugin-creator\\scripts\\validate_plugin.py`

**Interfaces:**
- Consumes: plugin manifests與`local` marketplace。
- Produces: 可被 Codex 重新安裝的兩個 plugin entry。

- [ ] **Step 1: 驗證 SheepStory 現有來源**

Run: `python validate_plugin.py C:\\Users\\USER\\plugins\\sheep-story`
Expected: PASS，且圖標檔案存在。

- [ ] **Step 2: 追加 Codex Game Studios marketplace entry**

Add a `codex-game-studios` entry with source `./plugins/codex-game-studios`, `AVAILABLE`, `ON_INSTALL`, and category `Productivity`。
Expected: 既有 SheepStory entry 不變且新 entry 位於陣列末尾。

- [ ] **Step 3: 更新 cachebuster 與重新驗證**

Run: `update_plugin_cachebuster.py` for both source directories, then run the plugin validator for both.
Expected: 兩個 manifest 均 PASS 且版本只更新 `+codex.*` 後綴。

### Task 3: 重新安裝並驗收 Codex 顯示

**Files:**
- Modify: Codex plugin installation state (CLI managed)
- Test: `codex plugin list`

**Interfaces:**
- Consumes: `local` marketplace entries與已驗證的 source plugins。
- Produces: Codex 可載入的 SheepStory 和 Codex Game Studios plugins。

- [ ] **Step 1: 讀取 marketplace 名稱**

Run: `python read_marketplace_name.py`
Expected: `local`。

- [ ] **Step 2: 重新安裝兩個 plugins**

Run: `codex plugin add sheep-story@local` and `codex plugin add codex-game-studios@local`。
Expected: CLI 回報安裝成功。

- [ ] **Step 3: 驗收安裝狀態**

Run: `codex plugin list`
Expected: 同時列出 `sheep-story` 與 `codex-game-studios`，來源為 `local`。
