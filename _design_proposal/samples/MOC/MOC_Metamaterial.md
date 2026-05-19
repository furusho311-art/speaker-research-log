---
title: "MOC: 音響メタマテリアル"
type: moc
aliases: [メタマテリアル, Acoustic Metamaterial, 音響メタマテリアル]
up: "[[MOC_Concepts]]"
covers: [音響メタマテリアル, 遮音, 吸音, 通気遮音, HDM, Helmholtz共鳴, ラビリンス型, トポロジー最適化]
last-curated: 2026-05-19
tags: [moc, tech/metamaterial]
---

# MOC: 音響メタマテリアル

## このMOCの守備範囲

波長以下の人工構造で音波の伝搬・吸収・遮蔽・指向性を制御する技術群を網羅する。古典材料（質量・剛性）では到達できない実効音響インピーダンスや負屈折を、形状の知性で実現するアプローチ全般。**応用範囲はホームオーディオの背面波吸収（KEF MAT）から、建築の通気遮音、自動車キャビンの音場均一化、水中音響通信まで横断的**。

含む：Helmholtz共鳴、局所共鳴（Local Resonance）、フォノニック結晶、ラビリンス（迷路）構造、デコレーテッドメンブレン、フラクタル構造、ベンチレーテッド遮音、HDM（高次元多重化）、Ghost Tunnel（一方向音波誘導）、機械学習駆動設計、トポロジー最適化、生物模倣型。

含まない：通常の吸音材（グラスウール等、波長依存だが構造設計に依らないもの）、能動騒音制御（ANC）単体——ただし**能動メタマテリアル**は本MOCの守備範囲。

## 中心概念

- [[Acoustic Metamaterial]] — 包括用語
- [[Metamaterial Absorption Technology (MAT)]] — KEFが商標化した背面波吸収技術
- [[Helmholtz共鳴]] — 単純共鳴器、設計の基本ブロック
- [[局所共鳴]] — Local Resonance、低周波での質量則突破の核
- [[ラビリンス型メタマテリアル]] — 迷路状チャネルで等価屈折率を増大
- [[Decorated Membrane]] — 薄膜＋集中質量、軽量低周波遮音
- [[フラクタルメタマテリアル]] — 自己相似構造で広帯域化
- [[Ventilated Metamaterial]] — 通気しながら遮音
- [[HDMメタマテリアル]] — 高次元多重化（振幅・位相・周波数・OAM）
- [[Ghost Tunnel]] — ゼロ屈折率による一方向音波誘導

## 主要プレイヤー

- [[KEF]] — MAT商品化のパイオニア（LS50 Meta 2020〜、Q1 Meta、R5 Meta、Reference Meta）
- [[IMDEA]] — HDMメタマテリアル（Materials Horizons 2026）
- [[Pixie Dust Technologies]] — iwasemiシリーズ（OC-α/OC-β）
- [[Acoustic Metamaterials Group]] — KEFと共同開発
- [[Sony]] — ヘッドフォン応用研究中
- [[Chery Automobile]] — コッホフラクタルメタサーフェスの車載応用（JAP 2025）
- [[Boston University Zhang Lab]] — Phase gradient ultra-open metamaterials
- [[南京師範大学]] — Ghost Tunnel（Changqing Xu）

## 進行中の問い

- [[低周波広帯域吸音は薄さλ/20を切れるか]]
- [[メタマテリアルはコンシューマー価格に降りられるか]]
- [[3Dプリント量産化のコスト交差点はどこか]]
- [[LLM駆動設計は遺伝的アルゴリズムを置き換えるか]]

## 関連MOC

- [[MOC_Drivers]] — 振動板側からの応用（KEF MAT等）
- [[MOC_Car_Audio]] — 車室内音響応用
- [[MOC_AI_Acoustics]] — LLM/ML駆動設計
- [[MOC_Measurement]] — メタマテリアル評価手法

## 最近この分野で言及された日次レポート

```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(string(tags), "メタマテリアル") OR contains(string(theme), "メタマテリアル")
SORT file.name DESC
LIMIT 20
```

## このMOC配下の概念ノート

```dataview
LIST
FROM "20_Concepts"
WHERE up = this.file.link OR contains(string(up), this.file.name)
SORT file.name ASC
```

## このMOC配下の論文（読了状態別）

```dataview
TABLE WITHOUT ID
  file.link AS "Paper", year, venue, read-status, rating
FROM "30_Literature/papers"
WHERE contains(string(tags), "metamaterial") OR contains(string(file.outlinks), this.file.link)
SORT year DESC
```

## このMOC配下のスタブ（未検証AI生成）

```dataview
LIST
FROM "00_Inbox/_stubs"
WHERE contains(string(tags), "metamaterial") OR contains(string(up), this.file.link)
```

## キュレーション履歴

- 2026-05-19 — 初版作成。54本の既存レポートから音響メタマテリアル関連を集約。Ghost Tunnel・HDM・iwasemi OC-β・LLM駆動設計を中心概念として加えた。
