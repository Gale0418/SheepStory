# Codex Plugin Presentation Design

## Goal

將 SheepStory 與 Codex Game Studios 以可維護的本機 plugin 來源安裝至既有 `local` marketplace，並在 Codex 插件頁顯示各自的圖標與說明。

## Source Layout

- `C:\\Users\\USER\\plugins\\sheep-story` 保持為 SheepStory 的可維護 plugin 來源；它已包含 `.codex-plugin/plugin.json`、技能資料與羊書 SVG 圖標。
- `C:\\Users\\USER\\plugins\\codex-game-studios` 從目前已驗證的安裝包內容建立，保留完整的工作流程、範本、腳本與現有 SVG 圖標。
- `C:\\Users\\USER\\.agents\\plugins\\marketplace.json` 保持 `local` marketplace，僅追加 Codex Game Studios 條目；既有 SheepStory 條目不重排。

## Presentation

- SheepStory：沿用 `assets/icon-options/book-10-sheepish.svg` 作為 composer icon 與 logo，品牌色 `#6B8E23`。
- Codex Game Studios：沿用 `assets/icon-small.svg` 與 `assets/logo-large.svg`，品牌色 `#14B8A6`。
- 兩份 manifest 均保留 `skills` 指向與既有 starter prompts，不新增沒有對應實作的 app、MCP 或 hook 欄位。

## Safety and Verification

- 不修改快取內的套件；快取會在重新安裝時重建，不能當來源。
- 不碰 `D:\\MyGame\\SheepStory` 內既有未提交內容。
- 先確認尚不存在的 Codex Game Studios 本機來源無法驗證，再建立來源後驗證兩個 plugin。
- 更新兩個 plugin 的 Codex cachebuster，依 `local` marketplace 重新安裝，並以 `codex plugin list` 與 marketplace JSON 解析確認。
