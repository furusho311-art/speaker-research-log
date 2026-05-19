---
title: "🏠 Home"
type: home
created: 2026-05-19
last-curated: 2026-05-19
tags: [home]
---

# 🏠 Speaker Research Vault — Home

ようこそ、第二の脳へ。**スピーカー・音響技術の研究ログを長期的に育てるためのObsidian Vault**。

---

## 📊 Vault状態
- [[Dashboard]] — ノート統計・健康度

## 🗺️ メタMOC（入口ハブ）
- [[MOC_Companies]] — 企業・組織
- [[MOC_Products]] — 製品・モデル
- [[MOC_Concepts]] — 技術・概念
- [[MOC_Literature]] — 論文・特許・規格
- [[MOC_Events]] — 学会・展示会

## 🔬 分野別MOC
- [[MOC_Metamaterial]] — 音響メタマテリアル
- [[MOC_Drivers]] — 振動板・ドライバー・トランスデューサ
- [[MOC_DSP]] — DSP・ルームコレクション
- [[MOC_Amplifier]] — Class-D・GaN・パワーアンプ
- [[MOC_Immersive]] — Dolby Atmos・空間オーディオ
- [[MOC_Networking]] — Dante・AES67・Milan・AVoIP
- [[MOC_Car_Audio]] — 車載・車室内音響
- [[MOC_MEMS]] — MEMS スピーカー・マイクロフォン
- [[MOC_Measurement]] — Klippel・CTA-2034A・Spinorama
- [[MOC_AI_Acoustics]] — AI/ML × 音響
- [[MOC_BEM_FEM]] — BEM/FEM/最適化シミュレーション
- [[MOC_Wireless]] — Bluetooth LE Audio・Auracast

## 📅 直近のDaily Report

```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
SORT file.name DESC
LIMIT 10
```

## 📚 最近追加したノート

```dataview
LIST
WHERE !contains(file.folder, "Templates") AND !contains(file.folder, "reports")
SORT file.ctime DESC
LIMIT 15
```

## 🌱 育成中の Claim ノート（自分のEvergreen）

```dataview
LIST
FROM "20_Concepts"
WHERE type = "claim"
SORT file.mtime DESC
LIMIT 10
```

## 📥 未編集スタブ

```dataview
LIST FROM "00_Inbox/_stubs"
SORT file.ctime DESC
LIMIT 10
```

---

## このVaultの使い方

1. **毎朝**: AI生成のDaily Report `reports/YYYY/MM/YYYY-MM-DD.md` が自動push
2. **気になった**：エンティティページ（`10_Entities/`配下）を編集・肉付け、`my-take` を残す
3. **論文を読んだ**：Literature note を作り `read-status: read`, `rating` を更新
4. **理解が深まった**：Claim ノート（命題タイトル）を `20_Concepts/` に書く＝Evergreen化
5. **週末・月末**：[[Dashboard]] を眺めて未MOC化ノート・未検証スタブを処理

詳しくは → [[_design_proposal/DESIGN|設計書]]
