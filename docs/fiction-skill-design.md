# SheepStory 小說 Skill 設計筆記

> 本文件整理目前關於「用 AI 輔助小說寫作」的討論，目標是把它轉成可落地的 Agent Skill / `SKILL.md` 工作流。

## 1. 核心目標

SheepStory 的小說 skill 不是單純叫 AI 代寫，而是建立一個能約束 AI 的寫作流程：

1. 先討論大綱，未經確認不准寫正文。
2. 寫作前先讀取/重建故事狀態，避免忘記前面劇情。
3. 大綱階段檢查衝突壓力，避免故事太和平。
4. 高智商角色不能靠旁白作弊，要靠可回放的觀察、推理、代價與限制。
5. 謀略不能完美，要在現有爛資源下做最佳化。
6. 正文完成後自動去除 AI 味，但不能把作者風格洗掉。

一句話版本：

```text
未經大綱確認，不准動筆。
缺少連續性資料，不准硬寫。
沒有衝突壓力，不准進正文。
高智商不能等於作者作弊。
完美計畫太假，必須是有限資源下的最佳解。
```

## 2. AI 寫小說的主要風險

### 2.1 忘記前面劇情

AI 長篇最容易出現連續性崩壞：

- 前面角色受傷，下一章突然能跑酷。
- 前面角色互相不信任，後面像老朋友聊天。
- 物品已經丟失或毀壞，後面又出現。
- 角色突然知道自己不該知道的秘密。
- 伏筆還沒鋪就先回收。
- 情緒後果被重置。

這不是單純「記性差」，而是沒有維護故事狀態機。

### 2.2 故事太和平

AI 容易把角色寫得太成熟、太理性、太會溝通，導致衝突快速消失：

```text
角色 A 有誤會。
角色 B 解釋。
角色 A 理解。
兩人和好。
章節結束。
```

這種寫法很健康，但小說會死。

小說需要：慾望、阻礙、代價、誤解、偏執、錯判、延遲爆炸。

### 2.3 AI 味

「AI 味」不是單一問題，而是一組症狀：

- 太平滑：每句都工整，每段都像作文。
- 太總結：直接說「她很悲傷」，而不是讓讀者看見悲傷。
- 太會說明：世界觀與角色關係直接倒給讀者。
- 太對稱：每段三句、每個清單三點、每章節奏一樣。
- 太禮貌：角色都像客服，衝突不尖銳。
- 太空泛：使用「命運的齒輪開始轉動」等萬用句。
- 太像翻譯腔：中文句子像英文翻過來。

去 AI 味不是把文字變優雅，而是讓文字更像有人在選擇、保留粗糙、節奏、曖昧與角色聲音。

## 3. 必要工作流

```text
使用者提出故事想法
↓
Skill 先整理/詢問大綱
↓
產出可討論版大綱
↓
等待使用者確認或修改
↓
確認後才寫正文
↓
正文完成後自動跑：
1. 劇情功能檢查
2. POV / 角色知識檢查
3. 衝突壓力檢查
4. 對話自然度檢查
5. AI 味清除
6. 使用者風格保留檢查
```

## 4. Outline Approval Gate

```markdown
## Outline Approval Gate

Never draft full prose before the outline is approved.

When the user asks to write a chapter, scene, continuation, or story section:
1. First produce a discussion outline.
2. The outline must include:
   - scene purpose
   - POV character
   - location
   - emotional turn
   - conflict or obstacle
   - information revealed
   - ending hook or state change
3. Ask the user what to change.
4. Stop after the outline.
5. Do not write prose until the user explicitly approves the outline.

Approval must be explicit, such as:
- 「可以，開始寫」
- 「照這個寫」
- 「大綱 OK」
- 「確認，動筆」

Generic reactions like 「嗯嗯」「好像可以」「有趣」「繼續想」do not count as approval.
```

## 5. Continuity First

```markdown
## Continuity First

Before writing any prose, load or reconstruct the current story state.

Required checks:
- What happened in the previous chapter?
- What changed permanently?
- Who knows what?
- Who is injured, missing, dead, angry, suspicious, guilty, or indebted?
- Which promises, mysteries, and foreshadowing are still open?
- Which objects changed owner, location, or status?
- What must not be contradicted?

If the required context is missing, produce a continuity question list instead of drafting.
```

## 6. Conflict Pressure Check

```markdown
## Conflict Pressure Check

For each scene beat, verify:

- Desire: What does the POV character want?
- Obstacle: Who or what blocks it?
- Cost: What becomes worse if they pursue it?
- Turn: What changes by the end?
- Irreversibility: Why can the story not simply reset after this scene?
- Subtext: What is not being said directly?

If a beat has no desire, obstacle, cost, or turn, mark it as weak and revise the outline before drafting.
```

## 7. No Peaceful Scene Unless Earned

```markdown
## No Peaceful Scene Unless Earned

Do not resolve conflict too quickly.

Every scene must contain at least one active pressure:
- someone wants something
- someone hides something
- someone misunderstands something
- someone pays a cost
- someone makes the situation worse
- someone loses control
- someone gains information they should not have
- someone refuses the emotionally healthy option

A peaceful scene is allowed only if it creates contrast, dread, intimacy, or setup for later damage.
```

## 8. Anti-AI-Flavour Pass

```markdown
## Anti-AI-Flavour Pass

After drafting prose, automatically run an anti-AI-flavour pass before showing the final text.

AI flavour means:
- generic emotional summary
- over-explaining character motives
- symmetrical paragraph structure
- motivational-poster sentences
- vague dramatic abstractions
- polite or frictionless dialogue
- context-setting openings
- empty closing summaries
- repeated sentence rhythm
- translation-like Chinese

Fix by:
- replacing summary with visible action
- grounding emotion in body, gesture, object, silence, or setting
- varying sentence and paragraph length
- removing generic grand statements
- making dialogue pursue intention against obstacle
- preserving deliberate ambiguity
- preserving the author's original rhythm
- keeping useful roughness when it carries voice

Do not over-polish. Do not make every sentence elegant. Fiction should feel chosen, not sterilized.
```

## 9. 高智商角色寫法

### 9.1 問題

一般作者很難寫高智商天才，因為角色的上限常被作者的思考上限限制。AI 的優勢是可以在幕後多輪推演，替作者補足策略、推理與對抗檢查。

但 AI 也很容易寫出假天才：

- 「他早已看穿一切」但沒有推理鏈。
- 對手突然變笨。
- 用專有名詞冒充聰明。
- 靠旁白宣布角色很強。
- 完美預判，卻沒有鋪陳。

### 9.2 Genius Character Pass

```markdown
## Genius Character Pass

Use this pass when writing characters described as geniuses, strategists, detectives, scientists, inventors, masterminds, prodigies, or unusually intelligent antagonists.

Do not portray intelligence by merely saying the character is smart.

Before drafting the scene, define:

1. Domain of intelligence
   - What is this character specifically good at?
   - What are they not good at?

2. Hidden observation
   - What detail does the character notice that others miss?

3. Reasoning chain
   - What steps connect the observation to the conclusion?
   - Could a careful reader reconstruct the logic later?

4. Strategic option set
   - Generate at least three possible plans.
   - Reject the obvious plan.
   - Choose the plan with the best tradeoff, not the cleanest victory.

5. Cost and blind spot
   - What does the plan cost?
   - What does the character underestimate?
   - Who is harmed, alienated, or alerted by the solution?

6. Opponent competence
   - Do not make the opponent stupid just to make the genius look smart.
   - If the genius wins, show why their read, preparation, or sacrifice beat a competent opponent.

After drafting, remove fake-genius markers:
- 「早已看穿一切」
- 「他微微一笑」
- unexplained perfect predictions
- jargon without consequence
- instant solutions without setup
- enemies making convenient mistakes
```

## 10. Genius vs Genius：敵方紅隊檢查

高智商對高智商不能只替主角逆推。要替敵人也逆推。

```markdown
## Adversarial Genius Check

When writing a genius-vs-genius conflict, do not let the protagonist win because the opponent becomes stupid.

Before drafting, create both sides' models:

### Protagonist Model
- Goal:
- Known information:
- Hidden information:
- Resources:
- Constraints:
- Unacceptable cost:
- Blind spot:

### Opponent Model
- Goal:
- Known information:
- Hidden information:
- Resources:
- Constraints:
- Unacceptable cost:
- Blind spot:

### Red-Team Pass
For each protagonist plan:
1. How would a competent opponent detect it?
2. How would they counter it?
3. What would they protect first?
4. What false assumption could they reasonably make?
5. What cost prevents them from choosing the perfect counter?

If the opponent can easily stop the plan, revise the outline before drafting.

A genius victory must come from:
- asymmetric information,
- forced tradeoff,
- timing pressure,
- moral constraint,
- political constraint,
- prepared fallback,
- or deliberate sacrifice.

Never use:
- "the enemy simply didn't notice"
- unexplained perfect prediction
- sudden enemy stupidity
- lucky timing without setup
- post-hoc reveal with no planted evidence
```

## 11. Resource-Constrained Genius Check

天才角色不該有完美計畫，而應該在爛資源裡打出最大勝率。

```markdown
## Resource-Constrained Genius Check

When writing a genius character, do not give them a perfect plan, perfect team, perfect timing, or perfect information.

Before drafting a strategy scene, define:

### 1. Available Resources
- People:
- Money:
- Tools:
- Information:
- Time:
- Political cover:
- Terrain / environment:
- Public opinion:

### 2. Resource Defects
For each resource, identify what is wrong with it:
- unreliable
- weak
- incomplete
- morally costly
- traceable
- slow
- politically dangerous
- emotionally unstable

### 3. Strategic Conversion
For each defective resource, ask:
- How can this still be useful?
- Can it become bait?
- Can it buy time?
- Can it reveal enemy behavior?
- Can it create noise?
- Can it force the opponent to overreact?
- Can it be sacrificed without destroying the main goal?

### 4. Best Available Plan
The chosen plan must be the best available plan under current constraints, not the perfect plan.

It must include:
- what it gains
- what it risks
- what it sacrifices
- what can go wrong
- what fallback exists if the first move fails

### 5. Anti-Fake-Genius Rule
Reject plans that require:
- perfect obedience from all allies
- enemy stupidity
- exact timing with no margin
- information the character does not possess
- no collateral consequences
- everyone reacting exactly as predicted
```

## 12. Battlefield Anomaly Rule

高智商角色可以失敗，但失敗必須更新模型。

```markdown
## Battlefield Anomaly Rule

When writing a tactical genius scene, the plan must include uncertainty.

Before the protagonist executes a plan, define:

1. Expected enemy behavior
   - What does the protagonist think the enemy will do?

2. Hidden anomaly
   - What exists outside the protagonist's current model?
   - Examples: ace pilot, unknown ability, betrayal, environmental failure, civilian interference, bad intelligence.

3. Model failure
   - Which assumption breaks first?
   - How does the protagonist detect that the model is wrong?

4. Damage control
   - Does the protagonist adapt, retreat, sacrifice pieces, or change objectives?

5. After-action update
   - What does the protagonist learn?
   - How does future planning change because of this failure?

A genius character may fail. The key is that failure updates their model.
```

## 13. Twist Budget

避免劇情被丟進洗衣機：反轉太多、太密、沒有情緒沉澱。

```markdown
## Twist Budget

Do not stack major reversals without emotional settlement.

A major twist must satisfy:
1. Setup existed before the reveal.
2. At least one character pays an emotional or strategic cost.
3. The world state changes permanently.
4. The next scene shows consequences instead of immediately jumping to another twist.

If a chapter contains more than one major reversal, justify why the pacing needs that compression.
```

## 14. 可用 Skill 架構

建議第一版不要拆太多，先做一個主 skill：

```text
my-novel-writing/
├── SKILL.md
└── references/
    ├── outline-gate.md
    ├── anti-ai-flavour.md
    ├── continuity-check.md
    ├── conflict-pressure.md
    ├── genius-character.md
    ├── adversarial-genius.md
    ├── resource-constrained-genius.md
    ├── battlefield-anomaly.md
    ├── dialogue-checklist.md
    └── style-preservation.md
```

後續可以拆成多個 skill：

```text
my-story-init/
my-chapter-writing/
my-continuity-check/
my-dialogue-polish/
my-style-polish/
my-genius-strategy/
```

## 15. 參考 GitHub Skills

目前討論過可改造的來源：

| Repo | License | 用途 |
|---|---|---|
| `wgwtest/novel-writing` | MIT | 小說章節規劃、續寫、修稿、審稿主骨架 |
| `danjdewhurst/story-skills` | MIT | 長篇 story bible、角色、世界觀、章節、伏筆、連續性 |
| `JoelLewis/skill-library` | MIT | 對話、角色、世界觀等 narrative 補強 |
| `d-wwei/great-writer` | MIT | 中文寫作、潤稿、humanizer、去 AI 味 |
| `haowjy/creative-writing-skills` | Apache-2.0 | 大型創作流程、reader-sim、character-sim、story-memory |
| `tanaka-naoki/japanese-creative-writing` | MIT | 日式小說、怪談、輕小說流程參考 |

不建議複製改發：

| Repo | 原因 |
|---|---|
| `liuxiaopeng1981/hermes-writing-skills` | 未找到 LICENSE，只適合私人閱讀參考 |

## 16. 最終核心法

```text
1. 不准忘記前面劇情。
2. 不准把故事寫太和平。
3. 不准把高智商寫成旁白作弊。
4. 不准給天才完美資源與完美計畫；必須在缺陷資源下做最佳化。
5. 不准讓高智商敵人突然降智；必須跑敵方紅隊檢查。
6. 不准未經大綱確認就動筆。
7. 不准去 AI 味去到把作者風格也洗掉。
```

## 17. 一句話設計宣言

```text
SheepStory 的 skill 不是讓 AI 寫更多，而是讓 AI 先記得、先思考、先承受限制，再寫。
```
