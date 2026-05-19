---
title: "speaker-research-log Vault 設計書 v1"
date: 2026-05-19
status: draft
author: Claude (Cowork) × タコ助
target-repo: furusho311-art/speaker-research-log
---

# speaker-research-log を Obsidian「第二の脳」化する設計書 v1

## 0. ねらい

54本/累計2万行強のスピーカー・音響デイリーレポートを、

- **後から見直しやすい**（時系列だけでなくエンティティ・概念から逆引きできる）
- **第二の脳として活用できる**（思考のネットワークが育つ・自分の洞察と他人の情報が分離される）
- **AIエージェントが毎日成長させ続けられる**（既存スケジュールタスクと両立する）

形に作り変える。既存レポート群（`reports/YYYY/MM/YYYY-MM-DD.md`）は**不可侵資産**として残し、その上に Obsidian Vault 機能層を**平行して**追加する非破壊改修方式を採る。

骨格は LYT（Linking Your Thinking）、粒度は Zettelkasten、論文・特許は研究ログ系の Literature note 運用、を組み合わせるハイブリッド設計とする。

---

## 1. 全体アーキテクチャ

リポジトリのルート構造を以下に拡張する。`00_` などの数字プレフィクスは Obsidian エクスプローラの並び順を安定させるためのもの。

```
speaker-research-log/
├── README.md
├── .gitignore                    # 新規（後述）
├── .obsidian/                    # Obsidian設定（workspace.jsonのみignore）
│
├── 00_Inbox/                     # 検証待ち・スタブ・浮動メモ
│   ├── _stubs/                   # AIが言及検出時に自動生成するスタブ
│   └── fleeting/                 # 自分の走り書き
│
├── 10_Entities/
│   ├── Company/                  # KEF, Sony, IMDEA, ...
│   ├── Product/                  # CLC65, KEF MAT, SPHERA, ...
│   └── Person/                   # Floyd E. Toole, Wolfgang Klippel, Hervé Lissek...
│
├── 20_Concepts/                  # メタマテリアル, BEM, Helmholtz共鳴, ...
│
├── 30_Literature/                # 論文・特許・規格（1ソース1ノート）
│   ├── papers/
│   ├── patents/
│   └── standards/
│
├── 40_Reports_Daily/             # ★既存 reports/YYYY/MM/*.md を symlinkで束ねる（後述）
│
├── 50_Calendar/                  # 自分用Daily note（任意）+ Weekly MOC
│   ├── Daily/
│   └── Weekly/
│
├── 60_Projects/                  # AcousticRadSim等の並走プロジェクト用（オプション）
│
├── 90_Atlas/                     # ホーム & MOC群
│   ├── Home.md                   # Vaultの入口
│   ├── Dashboard.md              # Vault健康度ダッシュボード
│   ├── MOC_Companies.md
│   ├── MOC_Products.md
│   ├── MOC_Concepts.md
│   ├── MOC_Literature.md
│   ├── MOC_Metamaterial.md       # 分野別MOC（必要に応じて増殖）
│   ├── MOC_Drivers.md
│   ├── MOC_DSP.md
│   ├── MOC_Immersive.md
│   ├── MOC_Networking.md         # Dante/AES67/AVoIP
│   ├── MOC_Measurement.md
│   ├── MOC_AI_Acoustics.md
│   └── ...
│
├── 99_Attachments/               # PDF・図版（Git LFS推奨）
│
├── _templates/                   # Templater用（Obsidian設定）
│   ├── entity_company.md
│   ├── entity_product.md
│   ├── entity_concept.md
│   ├── literature_paper.md
│   ├── literature_patent.md
│   ├── moc.md
│   ├── daily_note.md
│   └── weekly_moc.md
│
├── reports/                      # ★既存・不可侵
│   └── 2026/03/2026-03-16.md ...
│
└── index/                        # ★既存・不可侵
    ├── by-topic.md
    └── cited-urls-2026.txt
```

### `40_Reports_Daily/` の位置づけ

既存 `reports/YYYY/MM/*.md` を直接 Obsidian Vault のターゲットにすると、ファイルパスが深く Dataview の `FROM "reports"` が階層を跨ぐ。そこで以下の二択：

- **(A) 推奨：シンボリックリンク方式**
  `40_Reports_Daily/2026-05-19.md → ../reports/2026/05/2026-05-19.md` のように **フラット・シンボリックリンク** を集中配置する。実体は既存パスのまま、Obsidian上は1階層で見える。GitHub上では症リンクが通常ファイルとして見え、内容が二重表示になるのは混乱を招くので、`.gitignore` で `40_Reports_Daily/` 配下のリンクを除外し、各クライアント側で `make symlinks` のような再生成スクリプトを置く。

- **(B) 代替：パス自体を Reports 用クエリ向けに使う**
  シンボリックリンクは作らず、Dataview の `FROM "reports"` で直接拾う。並び順が `2026/03/`/`2026/04/` のように年月で散るが、Dataview側で `SORT file.name DESC` すれば日付順は維持できる。GitHubで自然。シンプル。

→ **本設計書では (B) を採用**。シンプルさと既存スケジュールタスクの非破壊性を優先。

---

## 2. ノートタイプとテンプレート

### 2.1 命名規約

| ノートタイプ | タイトル例 | フォルダ |
|---|---|---|
| Company | `KEF`, `Brane Audio`, `Audinate` | `10_Entities/Company/` |
| Product | `KEF Reference 1 Meta`, `Dante` `Brane X` | `10_Entities/Product/` |
| Person | `Wolfgang Klippel`, `Hervé Lissek` | `10_Entities/Person/` |
| Concept（名詞句） | `Metamaterial Absorption Technology (MAT)`, `Class-D アンプ`, `Helmholtz共鳴` | `20_Concepts/` |
| Claim（完全句・Evergreen本体） | `メタマテリアル吸音は1/4波長共鳴より広帯域化できる` | `20_Concepts/` （タグ `#claim`） |
| Literature - Paper | `klippel2024nonlinear` (citekey) | `30_Literature/papers/` |
| Literature - Patent | `US20170085981A1`（公開番号） | `30_Literature/patents/` |
| Literature - Standard | `CTA-2034A` | `30_Literature/standards/` |
| Daily Report | `2026-05-19`（既存） | `reports/YYYY/MM/`（既存・不可侵） |
| Daily Note（任意） | `2026-05-19` | `50_Calendar/Daily/` |
| Weekly MOC | `2026-W20` | `50_Calendar/Weekly/` |
| MOC | `MOC_Metamaterial`, `MOC_Companies` | `90_Atlas/` |

**aliases frontmatter** で表記揺れを吸収する（例：KEFノートの `aliases: ["ケイイーエフ", "KEF Audio"]`）。Obsidianはalias経由でもwikilinkを解決する。

### 2.2 frontmatter スキーマ（型を持つメタデータ）

すべてのノートは以下を最低限持つ：

```yaml
---
title: "ノートタイトル"          # 省略時はファイル名
aliases: []
type: company | product | concept | claim | person | literature | moc | daily-note | daily-report
tags: []                          # ネスト型タグ（後述）
created: 2026-05-19
last-verified: 2026-05-19         # 人間が中身を確認した日
generated-by: human               # human | ai-claude | ai-claude-stub
---
```

タイプ別に追加するフィールド：

**Company:**
```yaml
type: company
country: UK
founded: 1961
parent-company: "[[Gold Peak]]"
website: https://kef.com
mentioned-first: 2026-03-26
```

**Product:**
```yaml
type: product
maker: "[[KEF]]"
category: speaker            # speaker | driver | dsp | amp | metamaterial | software | ...
released: 2025-09
status: shipping             # announced | shipping | EOL
specs:                       # ネストOK
  drivers: "5.25in mid + 25mm tweeter"
  freq-response: "45Hz-28kHz"
  price-usd: 2500
```

**Concept:**
```yaml
type: concept
parent: "[[Acoustic Metamaterial]]"   # 上位概念
domain: [acoustics, materials]
```

**Claim（命題ノート）:**
```yaml
type: claim
confidence: high|medium|low
basis:                      # この主張の根拠（Literature noteへのlink）
  - "[[klippel2024nonlinear]]"
  - "[[zhang2025metamaterial]]"
```

**Literature - Paper:**
```yaml
type: literature
sub-type: paper
authors: [Klippel, W., Morse, P.]
year: 2024
venue: AES Convention
doi: 10.17743/jaes.2024.0001
arxiv: ""
citekey: klippel2024nonlinear
zotero-uri: "zotero://select/items/@klippel2024nonlinear"
read-status: inbox          # inbox | reading | read | skim | abandon
rating: 0                   # 1-5（読了後に付ける）
read-date: ""
my-take: ""                 # 自分の一行評
tags: [lit/paper, tech/nonlinear]
```

**MOC:**
```yaml
type: moc
up: "[[Home]]"
covers: [メタマテリアル, 遮音, 吸音]
last-curated: 2026-05-19
```

### 2.3 タグ階層（ネスト型）

正規化された3階層を上限とする。

```
#area/...          領域（acoustics, materials, signal-processing, products, business）
#tech/...          技術概念（tech/metamaterial, tech/class-d, tech/bem, tech/mems, ...）
#company/...       企業（company/kef, company/sony, company/imdea, ...）
#product/...       製品（product/clc65, product/mat, product/sphera, ...）
#lit/...           文献タイプ（lit/paper, lit/patent, lit/standard, lit/review）
#status/...        状態（status/inbox, status/reading, status/read, status/stub, status/active-research）
#ai/...            AI生成マーカー（ai/suggested, ai/stub, ai/verified）
#claim             命題ノート（フラットタグ。`#claim/strong`, `#claim/tentative` 派生可）
#event/...         展示会・学会（event/axpona-2026, event/ise-2026, event/icassp-2026）
```

**ルール：**
- タグはkebab-case固定（`#tech/class-d` であって `#tech/Class_D` ではない）
- 日本語混在を避ける（タグは検索性のためASCII正規化、日本語はaliasesで吸収）
- 状態タグ（`#status/...`）以外は時間とともに変わらない値だけに付ける
- frontmatterに乗るキー（`year`, `authors`, `doi` など）は**タグ化しない**（型を持って扱いたいから）

---

## 3. MOC（Map of Content）設計

MOC は最重要のハブ。**5本のメタMOC**（Companies / Products / Concepts / Literature / Events）と、**N本の分野別MOC**で構成する。

### 3.1 メタMOC（5本固定）

- `MOC_Companies.md` — 全企業一覧。国・分野・親会社で分類。
- `MOC_Products.md` — 全製品一覧。カテゴリ・発売年で分類。
- `MOC_Concepts.md` — 全技術概念。領域別。
- `MOC_Literature.md` — 全論文・特許・規格。年・誌・読了状態別。
- `MOC_Events.md` — 学会・展示会（AXPONA, ICASSP, ISE, NAMM, AES Convention...）

### 3.2 分野別MOC（必要に応じて増殖、初期12本）

既存 `index/by-topic.md` の44カテゴリを基に集約：

1. `MOC_Metamaterial.md` — 音響メタマテリアル
2. `MOC_Drivers.md` — 振動板・トランスデューサ・ドライバー材料
3. `MOC_DSP.md` — DSP・ルームコレクション・FIRフィルタ
4. `MOC_Amplifier.md` — Class-D・GaN・真空管・パワーアンプ
5. `MOC_Immersive.md` — Dolby Atmos・空間オーディオ・WFS・Ambisonics
6. `MOC_Networking.md` — Dante・AES67・Milan・AVoIP
7. `MOC_Car_Audio.md` — 車載・車室内音響
8. `MOC_MEMS.md` — MEMS スピーカー・マイクロフォン
9. `MOC_Measurement.md` — Klippel・REW・CTA-2034A・Spinorama
10. `MOC_AI_Acoustics.md` — AI×音響・機械学習設計
11. `MOC_BEM_FEM.md` — BEM/FEM/最適化シミュレーション
12. `MOC_Wireless.md` — Bluetooth LE Audio・Auracast・WMAS

### 3.3 MOC テンプレ（手書きセクション + Dataviewで自動化）

```markdown
---
title: "MOC: 音響メタマテリアル"
type: moc
aliases: [メタマテリアル, Acoustic Metamaterial]
up: "[[MOC_Concepts]]"
covers: [音響メタマテリアル, 遮音, 吸音, 通気遮音]
last-curated: 2026-05-19
tags: [moc, tech/metamaterial]
---

# MOC: 音響メタマテリアル

## このMOCの守備範囲
波長以下の人工構造で音波伝搬・吸収・遮蔽を制御する技術全般。
ヘルムホルツ共鳴、局所共鳴、フォノニック結晶、ラビリンス（迷路）構造、
ベンチレーテッド遮音、HDM（高次元多重化）、トポロジー最適化、生物模倣型を含む。

## 中心概念
- [[Acoustic Metamaterial]] — 包括用語
- [[Helmholtz共鳴]] — 単純共鳴器
- [[局所共鳴]] — Local Resonance
- [[ラビリンス型メタマテリアル]]
- [[Metamaterial Absorption Technology (MAT)]] — KEF商標
- [[Decorated Membrane]]

## 主要プレイヤー
- [[KEF]] — MAT商品化のパイオニア
- [[IMDEA]] — HDMメタマテリアル
- [[Pixie Dust Technologies]] — iwasemiシリーズ
- [[Acoustic Metamaterials Group]] — KEFと共同開発

## 進行中の問い
- [[低周波広帯域吸音はどこまで薄くできるか]]
- [[メタマテリアルはコンシューマー価格に降りられるか]]

## 関連MOC
- [[MOC_Drivers]] — 振動板側からの応用
- [[MOC_Car_Audio]] — 車室内応用

## 最近この分野で言及された日次レポート
\`\`\`dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme AS "Theme"
FROM "reports"
WHERE contains(string(tags), "メタマテリアル") OR contains(string(theme), "メタマテリアル")
SORT file.name DESC
LIMIT 20
\`\`\`

## このMOC配下の概念ノート
\`\`\`dataview
LIST
FROM "20_Concepts"
WHERE contains(file.outlinks, this.file.link) OR contains(string(up), this.file.link)
SORT file.name ASC
\`\`\`

## このMOC配下の関連論文
\`\`\`dataview
TABLE WITHOUT ID
  file.link AS "Paper", year, venue, read-status, rating
FROM "30_Literature/papers"
WHERE contains(string(tags), "metamaterial")
SORT year DESC
\`\`\`

## このMOC配下のスタブ（未検証AI生成）
\`\`\`dataview
LIST
FROM "00_Inbox/_stubs"
WHERE contains(string(tags), "metamaterial") OR contains(string(up), this.file.link)
\`\`\`
```

---

## 4. Daily Report（既存）と Daily Note（新規）の役割分担

| | Daily Report（既存・不可侵） | Daily Note（新規・任意） |
|---|---|---|
| ファイル | `reports/YYYY/MM/YYYY-MM-DD.md` | `50_Calendar/Daily/YYYY-MM-DD.md` |
| 生成 | AI（既存タスク） | 自分 or AIが任意 |
| 内容 | 業界ニュース・論文・特集レポート（3000〜5000字） | 自分の思考メモ + その日の自動index |
| frontmatter | 既存仕様維持 + 軽い拡張（後述） | Daily note template |
| 役割 | **外部情報の集約と保存** | **自分の理解・問い・気づきの記録** |

### 4.1 既存 Daily Report frontmatter の軽い拡張（任意・後方互換）

既存タスクの SKILL.md を改修する別セッションで、frontmatter に下記オプショナルフィールドを追加できる。**既存レポートを書き換えなくても新フィールドが無いだけで支障なし**。

```yaml
---
date: 2026-05-19
theme: "..."
tags: [...]
summary: "..."
# 以下追加（オプショナル）
type: daily-report
entities-mentioned:           # AIが特集中に主要言及した実体
  companies: ["[[Brane Audio]]", "[[Purifi]]", "[[xMEMS]]"]
  products: ["[[CLC65]]", "[[Sycamore]]"]
  concepts: ["[[コロナ放電トランスデューサ (CDT)]]"]
  literature: ["[[lissek2026cdt]]", "[[arxiv-2508.18232]]"]
events: ["[[AXPONA 2026]]"]
covers-moc: ["[[MOC_Drivers]]", "[[MOC_Metamaterial]]"]
generated-by: ai-claude-speaker-research-daily
---
```

### 4.2 Daily Note テンプレ

```markdown
---
date: <% tp.date.now("YYYY-MM-DD") %>
type: daily-note
tags: [daily]
---

# <% tp.date.now("YYYY-MM-DD (ddd)") %>

## 今日の本Report
- [[<% tp.date.now("YYYY-MM-DD") %>]]  ← reports/YYYY/MM/

## 今日生まれたノート
\`\`\`dataview
LIST
WHERE file.cday = this.file.day AND !contains(file.folder, "Templates")
SORT file.ctime ASC
\`\`\`

## 今日更新されたノート
\`\`\`dataview
LIST
WHERE file.mday = this.file.day AND file.cday != this.file.day
SORT file.mtime DESC
\`\`\`

## 思考・気づき・問い
- 

## To-followup（後日深掘りしたい）
- 
```

---

## 5. AI エージェントとの統合ルール

既存 `speaker-research-daily` タスクが毎朝 push する。新Vault時代の挙動は別セッションで SKILL.md を改修するが、**改修方針は以下に固定**：

### 5.1 既存処理は維持
- `reports/YYYY/MM/YYYY-MM-DD.md` の生成
- `index/by-topic.md` の更新
- `index/cited-urls-2026.txt` の更新

### 5.2 新規追加処理（提案）

1. **エンティティ抽出フェーズ**
   レポート生成直後、本文と frontmatter を解析して企業・製品・概念・論文を抽出。

2. **wikilink 自動置換**
   本文中の固有名詞を `[[KEF]]` のような wikilink に置換。frontmatter に `entities-mentioned` を追加。

3. **エンティティページの追記/新規スタブ**
   - **既存ノート**：`## Mentioned in` セクション末尾に `- [[2026-05-19]] — 特集言及（CLC65発表）` を追記
   - **不在ノート**：`00_Inbox/_stubs/<Entity>.md` にスタブ生成、`#ai/stub` `#status/stub` タグ付与、`generated-by: ai-claude-stub`

4. **MOC再生成不要**
   MOCは Dataview で自動index、テンプレート部分は人間が手書きキュレーション。

### 5.3 安全運用ルール（破壊防止）

- **既存frontmatterは絶対に上書きしない**。AIが書ける範囲は明示的に **`## AI-Generated` 以下** または **`ai-suggested-*:` プレフィクス付きキー** に限定。
- **必須キーホワイトリスト**：`type`, `up`, `aliases` はAIが書き込まない。
- **スタブの寿命**：`#status/stub` のまま14日経過したノートは `Dashboard.md` に「未検証スタブ Top」として可視化。30日経過で `_archive/` 自動移動候補（人間が承認）。
- **タグ氾濫防止**：AIが新規タグを発行する場合は `ai-suggested-tags:` に置き、人間レビュー後に `tags:` へ昇格。
- **コンフリクト対策**：editor open状態でgit pullしないよう `obsidian-git` の auto-pull on startup と Vault closed時のみpullを徹底。

---

## 6. Dataview ダッシュボード

`90_Atlas/Dashboard.md` に Vault健康度を一画面集約する。

```markdown
---
title: "Vault Dashboard"
type: dashboard
---

# 📊 Vault Dashboard

## 統計
- **総ノート数**: `= length(file.lists)`
- **Companies**: `= length(filter(this.file.tasks, (t) => contains(t.tags, "company")))`
- **Daily Reports総数**:
\`\`\`dataviewjs
dv.paragraph(`**${dv.pages('"reports"').length}** reports`)
\`\`\`

## 未MOC化ノート（要キュレーション）
\`\`\`dataview
LIST
FROM "20_Concepts" OR "10_Entities"
WHERE !up AND !contains(file.outlinks, link("MOC"))
SORT file.ctime DESC
LIMIT 15
\`\`\`

## AI生成・未検証ノート（要レビュー）
\`\`\`dataview
TABLE generated-by, file.ctime AS "Created"
FROM "#ai/stub" OR "#status/stub"
WHERE !contains(string(generated-by), "verified")
SORT file.ctime DESC
LIMIT 20
\`\`\`

## 最近30日のmention Top10エンティティ
\`\`\`dataviewjs
const since = dv.date("today").minus(dv.duration("30 days"));
const reports = dv.pages('"reports"').where(p => p.file.cday >= since);
const counts = {};
for (const r of reports) {
  for (const link of r.file.outlinks) {
    counts[link.path] = (counts[link.path] || 0) + 1;
  }
}
const rows = Object.entries(counts)
  .map(([path, n]) => [dv.fileLink(path), n])
  .sort((a, b) => b[1] - a[1]).slice(0, 10);
dv.table(["Entity", "Mentions (30d)"], rows);
\`\`\`

## Literature 読了率
\`\`\`dataviewjs
const lit = dv.pages('"30_Literature"');
const read = lit.where(p => p["read-status"] === "read").length;
const reading = lit.where(p => p["read-status"] === "reading").length;
const inbox = lit.where(p => p["read-status"] === "inbox").length;
const total = lit.length;
dv.paragraph(
  `**${read}** read / **${reading}** reading / **${inbox}** inbox (total ${total})  \n` +
  `Read rate: ${total > 0 ? Math.round(read/total*100) : 0}%`
);
\`\`\`

## このMonthのMOC更新状況
\`\`\`dataview
TABLE last-curated, length(file.inlinks) AS "Backlinks"
FROM "90_Atlas"
WHERE type = "moc"
SORT last-curated ASC
\`\`\`
```

---

## 7. Git / GitHub 運用

### 7.1 `.gitignore`（推奨）

```gitignore
# Obsidian — デバイス固有のみ除外
.obsidian/workspace.json
.obsidian/workspace-mobile.json
.obsidian/cache
.obsidian/graph.json

# 一時・OS固有
.trash/
.DS_Store
Thumbs.db
*.swp

# obsidian-git コンフリクト記録
conflict-files-obsidian-git.md

# 大型添付（LFS推奨）
99_Attachments/*.pdf
99_Attachments/*.canvas
```

`.obsidian/` 全体をignoreしない理由：plugin設定・Dataview設定・テーマ・テンプレートディレクトリ指定などをデバイス間で同期したい。

### 7.2 obsidian-git プラグイン推奨設定

- Auto pull on startup: **ON**
- Auto commit-and-sync interval: **15分**
- Pull updates on startup: **ON**
- Commit message: `vault-edit: {{date}} ({{numFiles}} files)`

### 7.3 既存スケジュールタスクとの並走

既存のスケジュールタスクは GitHub Contents API で直接push（git pullしない）するため、コンフリクトは **同一ファイルへの同時pushが発生したときのみ**。新Vault時代も：

- スケジュールタスクのpush対象：`reports/`, `index/`, `00_Inbox/_stubs/`, `10_Entities/*/`（追記のみ）
- 自分が手で編集する対象：`90_Atlas/`, `20_Concepts/`, `50_Calendar/`, `_templates/`

→ **ファイル単位で書き込み主体が分かれる**ため、衝突確率は低い。`10_Entities` の追記もファイル末尾の `## Mentioned in` セクション内に限定すれば、人間とAIの編集領域が物理的に分離される。

---

## 8. 既存資産の段階的移行プラン（別セッション）

今日のスコープ外だが、次セッション以降で行う作業の見取り図：

### Phase 1 — 設計の検証（本セッションで完了）
- ✅ 設計書（本文書）
- ✅ サンプルテンプレート群
- ✅ サンプルMOC・サンプルエンティティ・サンプルliterature・新形式Daily Note
- ✅ 既存スケジュールタスクとの互換性確認

### Phase 2 — Vault基盤の構築（手作業 or 1セッション）
1. ディレクトリ作成（`00_Inbox`〜`90_Atlas`）
2. `.gitignore` 設定
3. `.obsidian/` 初期化（Templater有効化、Dataview有効化、テンプレートフォルダ指定）
4. メタMOC 5本 + 分野別MOC 12本のスケルトン配置
5. `Home.md`, `Dashboard.md` の配置

### Phase 3 — 既存54本からのエンティティ抽出（スクリプト + 1セッション）
1. Pythonスクリプトで `reports/**/*.md` を全パース
2. 既知企業辞書・固有名詞・arXiv/DOIを正規表現＋AI判定で抽出
3. 重複・表記揺れをマージ
4. エンティティページのスタブをバッチ生成（`10_Entities/Company/*.md` 等）
5. レポート本文には触らず、各エンティティページの `## Mentioned in` に該当日付wikilinkを集約
6. ユーザーがエンティティページを段階的に肉付け

### Phase 4 — 既存スケジュールタスク（SKILL.md）の改修（1セッション）
1. 新規生成レポートに `entities-mentioned` frontmatter追加
2. 言及エンティティに対する追記/スタブ生成処理を追加
3. 安全運用ルール（5.3節）をプロンプトに焼き付け
4. 動作確認（手動trigger）

### Phase 5 — 運用開始 & 月次キュレーション
- 月次でDashboard.mdを見ながら未MOC化ノート・未検証スタブを処理
- 興味のあるClaim noteを書き始める（自分の主張＝Evergreen note）
- AcousticRadSim 開発で得た知見も同じVaultにEvergreen化

---

## 9. このVaultでできるようになる質問の例

設計が機能している証は、以下の質問に**ノートを辿ることで答えられる**こと：

1. **「KEFが2026年に何回・どの文脈で言及されたか？」**
   → `[[KEF]]` のbacklinkとDataviewクエリで一望
2. **「メタマテリアル分野で2026年に最も言及された論文Top5は？」**
   → `MOC_Metamaterial.md` のDataviewブロック
3. **「Class-Dアンプの最新動向はどう変化したか？」**
   → `MOC_Amplifier.md` から関連レポート時系列を表示
4. **「私が『Evergreen noteとして主張』した命題は今いくつ？」**
   → `WHERE type = "claim"` Dataview
5. **「読みたいけどまだ読んでない論文は？」**
   → `WHERE read-status = "inbox" AND rating >= 3` Dataview
6. **「Brane AudioとxMEMSはどの製品ラインで競合するか？」**
   → 両者のbacklink交差をDataviewJSで取得

---

## 10. リスクと留意事項

| リスク | 対策 |
|---|---|
| Vault肥大化（10kノート超）でDataviewが遅延 | フォルダ番号プレフィクス維持、Index Notesプラグイン併用、`FROM` を狭めて書く |
| AI生成スタブの氾濫 | 14日/30日ルール、Dashboardでの可視化、人間レビューゲート |
| エンティティの表記揺れ再発 | aliases必須・kebab-caseタグ・Linter的バッチスクリプト（月次） |
| GitHub上で `.canvas` `.excalidraw` が見えにくい | LFS推奨、添付は `99_Attachments/` 集中 |
| 既存スケジュールタスクの破壊 | 改修は別セッション、新frontmatterはoptional、既存セクション構造は維持 |
| Obsidianに依存しない可搬性 | プレーンMarkdownを死守、Dataviewブロックが消えても本文は読める形にする |

---

## 11. 今日納品するサンプル一覧

設計が「絵に描いた餅」にならないよう、本セッションで以下のサンプル一式を `_design_proposal/` 配下に同梱する：

- `templates/entity_company.md` — 企業エンティティテンプレ
- `templates/entity_product.md` — 製品エンティティテンプレ
- `templates/entity_concept.md` — 概念エンティティテンプレ
- `templates/literature_paper.md` — 論文Literature noteテンプレ
- `templates/moc.md` — MOCテンプレ
- `templates/daily_note.md` — Daily Noteテンプレ
- `samples/MOC/MOC_Metamaterial.md` — 分野別MOCの完全実例
- `samples/MOC/MOC_Companies.md` — メタMOCの実例
- `samples/entities/Company/Brane Audio.md` — 企業エンティティ実例
- `samples/entities/Company/KEF.md` — 企業エンティティ実例
- `samples/entities/Product/CLC65.md` — 製品エンティティ実例
- `samples/entities/Concept/Metamaterial Absorption Technology (MAT).md` — 概念実例
- `samples/literature/lissek2026cdt.md` — 論文Literature note実例
- `samples/Atlas/Home.md` — Vault入口
- `samples/Atlas/Dashboard.md` — ダッシュボード実例
- `samples/Calendar/2026-05-19.md` — 新形式Daily Noteの実例

---

## 12. 用語集

- **MOC (Map of Content)**: あるテーマに関係するノートへの入口集ハブノート。Nick Milo提唱。
- **Atomic note**: 1ノート＝1アイデアの粒度。Zettelkasten思想。
- **Evergreen note**: 永続的に育てる概念ノート。Andy Matuschak提唱。タイトルが命題になっている。
- **Literature note**: 1文献に1ノート。Zotero連携やcitekey管理が前提。
- **Dataview**: Obsidianプラグイン。frontmatterとファイル情報をSQL風にクエリして表示。
- **Templater**: 動的テンプレートを生成するObsidianプラグイン。
- **wikilink**: `[[ノートタイトル]]` 形式の内部リンク。
- **inline field**: 本文中の `key:: value` 形式。Dataviewでクエリ可能。
- **backlink**: 自分を指している被リンク。Obsidianの中核機能。

---

*設計書 v1 / 2026-05-19 / Claude (Cowork) × タコ助 / 状態: ユーザー確認待ち*
