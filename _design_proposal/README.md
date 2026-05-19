---
title: "speaker-research-log Vault化 — 設計提案パッケージ"
date: 2026-05-19
---

# speaker-research-log → Obsidian Vault 化 設計パッケージ

このフォルダは Cowork セッション 2026-05-19 で作成された、**「現状のスケジュール生成レポートをObsidianで第二の脳として活用する」** ための設計提案一式です。

## ファイル構成

```
_design_proposal/
├── README.md                    # このファイル
├── DESIGN.md                    # 設計書本体（12章・680行）★まずこれを読む
│
├── templates/                   # Templater用テンプレ（6本）
│   ├── entity_company.md
│   ├── entity_product.md
│   ├── entity_concept.md
│   ├── literature_paper.md
│   ├── moc.md
│   └── daily_note.md
│
└── samples/                     # 設計を具現化した実例（10本）
    ├── Atlas/
    │   ├── Home.md              # Vault入口
    │   └── Dashboard.md         # 健康度ダッシュボード（Dataview）
    ├── MOC/
    │   ├── MOC_Companies.md     # メタMOC実例
    │   └── MOC_Metamaterial.md  # 分野別MOC実例（完全版）
    ├── entities/
    │   ├── Company/
    │   │   ├── KEF.md           # 企業ノート実例（手書き）
    │   │   └── Brane Audio.md   # 企業ノート実例（要verify項目あり）
    │   ├── Product/
    │   │   └── CLC65.md         # 製品ノート実例
    │   └── Concept/
    │       └── Metamaterial Absorption Technology (MAT).md
    ├── literature/
    │   └── lissek2026cdt.md     # 論文Literature note実例
    └── Calendar/
        └── 2026-05-19.md        # 新形式Daily Note実例
```

## このパッケージの位置づけ

- 既存の `reports/` `index/` フォルダには **一切触っていません**。スケジュールタスクは引き続き動きます
- このパッケージは **設計の妥当性を確認するための雛形**。本適用前にレビューしていただくことを想定
- 既存54本のレポートからのエンティティ抽出スクリプトや、`speaker-research-daily` SKILL.md の改修は**別セッション**で実施予定

## 確認のポイント

設計書（`DESIGN.md`）を読みながら、特に以下を確認してください：

1. **フォルダ構造（§1）** — `00_Inbox` `10_Entities` `20_Concepts` `30_Literature` `40_Reports_Daily` `50_Calendar` `60_Projects` `90_Atlas` `99_Attachments` の階層が意図に合うか
2. **frontmatter スキーマ（§2.2）** — 各エンティティタイプの必須/任意フィールド
3. **タグ階層（§2.3）** — kebab-case強制・3階層上限・日本語混在不可
4. **MOC設計（§3）** — メタMOC 5本 + 分野別MOC 12本の粒度
5. **AI統合ルール（§5）** — `00_Inbox/_stubs/` への自動スタブ生成、frontmatter破壊防止
6. **既存スケジュールタスクとの並走（§7.3）** — 編集領域の物理的分離

## サンプルの個別ポイント

- `samples/MOC/MOC_Metamaterial.md` — 既存54本のレポートに頻出する音響メタマテリアル分野を実例化。Dataviewブロックは4種類（最近のreport一覧／配下concept／論文／スタブ）
- `samples/entities/Company/KEF.md` — 商用主要メーカーの典型例。aliases・親会社・製品リスト・技術リスト・Mentioned in を網羅
- `samples/entities/Company/Brane Audio.md` — **新興企業の場合の「未確認項目あり」表現の例**。`## 要verify` セクションでチェックリスト化
- `samples/entities/Product/CLC65.md` — 製品ノートのspecsネスト構造
- `samples/literature/lissek2026cdt.md` — 論文Literature noteの完全例。arXiv＋DOI＋my-take＋読了状態の運用イメージ
- `samples/Atlas/Dashboard.md` — DataviewJSで動的にVault健康度を表示する実例

## 次のステップ（別セッション）

1. このパッケージのレビュー・フィードバック反映
2. 実Vaultでのディレクトリ作成・`.gitignore`設定・`.obsidian/`初期化
3. Python移行スクリプト作成 → 既存54本からエンティティ抽出 → スタブ大量生成
4. `speaker-research-daily` SKILL.md の改修（新frontmatter `entities-mentioned`、エンティティページ追記/スタブ生成処理を追加）
5. 1〜2週間の運用後、Dashboard で健康度確認 → 設計を実運用に基づいて微修正

---

*作成: 2026-05-19 Cowork session / Claude (Cowork) × タコ助*
