<!-- Generated materialized view. Do not edit directly; rebuild from canonical MissionCenter files. -->
<!-- mission-center-derived schema=1.0 fingerprint-format=sha256-v2-lf source-fingerprint=eaa9bb0c1a9eac148e9cd672ab3bf1175416fa9d84aabaafe7f302f58f368c2f -->
# 當前工作集

- 唯一真實來源: `tasks.md`
- 可執行項目數: 3

| ID | 標題 | 優先級 | 狀態 | 下一步 | 依賴 | 驗證方式 | 阻塞原因 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| MC-011 | 建立 SheepStory 作者實驗室與故事狀態基座 | P1 | Review | 等待具明確數字預算的正式 completion critic gate，或由使用者接受契約型 milestone | - | 候選能力皆有明確分層、canon 邊界與可觀察驗收證據 |  |
| MC-018 | 第三里程碑整合驗證與收尾 | P1 | Review | 等待正式 completion critic 的數字預算或使用者接受契約型交付 | MC-017 | 所有本機檢查通過；剩餘 release gate 被明確記錄 |  |
| MC-019 | 舊版規則 CodeRabbit 審查與 main 本機同步 | P1 | Review | 審查 91 個舊文字檔，確認發現後修正驗證並更新本機套件 | - | CodeRabbit 範圍清單、修正證據、靜態與回歸、本機內容比對、main 同步 |  |
