---
title: "KEF"
aliases: ["KEF Audio", "ケイイーエフ", "ケフ"]
type: company
country: UK
founded: 1961
parent-company: "[[Gold Peak Industries]]"
website: https://kef.com
tags: [company, area/hifi, region/uk]
up: "[[MOC_Companies]]"
created: 2026-05-19
last-verified: 2026-05-19
generated-by: human
mentioned-first: 2026-03-26
---

# KEF

## 概要

イギリスのHiFiスピーカーメーカー。1961年にBBCエンジニアの**Raymond Cooke**が設立。香港のGold Peak Industries傘下。"Kent Engineering & Foundry" が社名の由来。

技術的アイデンティティは **Uni-Q同軸ドライバー** と **MAT (Metamaterial Absorption Technology)**。Uni-Qはツイーターをミッドウーファーの中心に配置し、点音源化により正確な音像定位と広い指向性を実現する。MATは2020年のLS50 Metaで初搭載され、ドライバー背面波の99%を吸収する音響メタマテリアルディスクで、不要な反射音を物理的に除去する。

## 主要製品

- [[LS50 Meta]] — 世界初MAT搭載（2020）
- [[Q1 Meta]] — エントリーラインへのMAT展開（2026継続）
- [[R5 Meta]] — ミドルレンジのMAT展開
- [[Reference 1 Meta]]・[[Reference 5 Meta]] — フラッグシップ
- [[LSX II]]・[[LS60 Wireless]] — アクティブワイヤレス系
- [[Muon]] — リミテッド・フラッグシップ

## 主要技術・関連概念

- [[Uni-Q]] — 同軸ドライバー、KEFの代名詞
- [[Metamaterial Absorption Technology (MAT)]] — 背面波吸収メタマテリアル
- [[Tangerine Waveguide]] — ツイーターウェーブガイド
- [[Single Apparent Source]] — Uni-Qが目指す音響的概念

## キーパーソン

- [[Raymond Cooke]] — 創業者、元BBCエンジニア
- [[Jack Oclee-Brown]] — 技術ディレクター（Acoustics）

## 提携・買収・関連企業

- **親会社**：[[Gold Peak Industries]]（香港、1992〜）
- **協業**：[[Acoustic Metamaterials Group]]（MAT共同開発）
- **姉妹ブランド**：[[Celestion]] — 同じGold Peak傘下

## 製品一覧（Dataview）

```dataview
TABLE WITHOUT ID
  file.link AS "Product",
  category,
  released,
  status
FROM "10_Entities/Product"
WHERE maker = this.file.link OR contains(string(maker), this.file.name)
SORT released DESC
```

## 関連論文・特許

```dataview
TABLE WITHOUT ID
  file.link AS "Title",
  year,
  venue
FROM "30_Literature"
WHERE contains(string(authors), this.file.name) OR contains(file.outlinks, this.file.link)
SORT year DESC
```

## Mentioned in（Daily Reportでの言及）

```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link) OR contains(string(tags), "KEF")
SORT file.name DESC
```

## メモ

- MAT商品化のパイオニアとして、音響メタマテリアルのコンシューマー普及を主導
- 同軸（コアキシャル）技術ではTannoy/Cabasseと並ぶ伝統メーカー
- 2020〜2026年のLS50 Metaヒットで、ライバル（B&W、Focal）もメタマテリアル系吸音技術に追随
