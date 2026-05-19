---
title: "Metamaterial Absorption Technology (MAT)"
aliases: ["MAT", "メタマテリアル吸音技術", "KEF MAT"]
type: concept
parent: "[[Acoustic Metamaterial]]"
domain: [acoustics, materials]
tags: [concept, tech/metamaterial, company/kef]
up: "[[MOC_Metamaterial]]"
created: 2026-05-19
last-verified: 2026-05-19
generated-by: human
---

# Metamaterial Absorption Technology (MAT)

## 一行定義

ドライバー背面に配置する**精密設計のラビリンス構造円盤**で、特定周波数帯（中高域）の背面波エネルギーをほぼ完全に吸収する音響メタマテリアル技術。KEFが2020年に商品化（LS50 Meta）。

## 概要

スピーカードライバーは前面に音を出すと同時に、振動板の背面にも同じ振幅の音を放射する。**この背面波がエンクロージャ内で反射しドライバー振動板を逆方向から押すと、再生音に着色（音の濁り・群遅延の悪化）が生じる**。従来の対策はグラスウール等の吸音材を充填する方法で、これは波長依存（高域は良いが低中域は通り抜ける）であり、根本的な解決にはならない。

MATは波長以下のスケールで設計された**迷路状チャネルの並列パターン**を持つ平円盤で、各チャネルは異なる周波数帯に共鳴して空気の運動エネルギーを熱に変換する。KEFは「LS50 Metaで620Hz〜の不要音を99%吸収」と謳う。

## 物理・数学的基礎

メタマテリアル吸音の理論的基盤は**実効音響インピーダンスの設計**にある。波長以下のスケールのユニットセル（迷路チャネル）は、巨視的には均質媒質として振る舞い、その実効密度・実効弾性率は構造設計で任意に設定できる。

- **インピーダンス整合**：入射波エネルギーを反射させずに吸収するには、メタマテリアル表面の実効音響インピーダンスを空気の音響インピーダンスにマッチさせる
- **共鳴吸収**：各迷路チャネルは1/4波長共鳴管として動作し、共鳴周波数で粘性損失と熱損失を最大化
- **広帯域化**：複数の異なる長さ・幅のチャネルを並列配置することで、単一共鳴ではない広帯域吸収を実現
- **設計手法**：通常は遺伝的アルゴリズム＋FEMで最適化。近年は[[LLM駆動メタマテリアル設計]]も登場

## 主な実装・応用例

- [[LS50 Meta]] — MAT初搭載（2020）、ドライバー背面に1枚円盤配置
- [[Q1 Meta]] — エントリーラインへの展開
- [[R5 Meta]] — ミドルレンジ、より大型のMAT
- [[Reference 1 Meta]] / [[Reference 5 Meta]] — フラッグシップ、多段MAT

## 関連概念

- 上位：[[Acoustic Metamaterial]]
- 兄弟：[[Helmholtz共鳴]], [[Ventilated Metamaterial]], [[Decorated Membrane]]
- 下位：[[Labyrinthine Acoustic Channel]]
- 対比：[[従来型吸音材（グラスウール・ウレタンフォーム）]]

## 主要文献

- [[kef-mat-whitepaper-2020]] — KEF技術ホワイトペーパー
- [[ma2014metamaterial]] — Ma & Sheng 2014 "Acoustic metamaterials: From local resonances to broad horizons" Science Advances（広く参照される総説）

## 関連企業・研究機関

- [[KEF]] — 商標保有・商品化
- [[Acoustic Metamaterials Group]] — 共同開発
- [[Hong Kong University of Science and Technology]] — 関連基礎研究

## このConceptが言及されたDaily Report

```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link)
   OR contains(string(tags), "MAT")
   OR contains(string(tags), "Metamaterial Absorption")
SORT file.name DESC
LIMIT 20
```

## 自分の理解（Evergreen化中）

- MATの本質は **「特定周波数帯の音響インピーダンスを設計可能にする」** こと。背面波吸収はその応用の1つに過ぎず、同じ原理で**前面放射の指向性制御**（音響レンズ）や**ベンチレーテッド遮音**にも応用できる
- KEFの差別化はメタマテリアル技術そのものよりも、**Uni-Qドライバーとの組み合わせ最適化**にある。同軸ドライバーは点音源化と引き換えに背面波の経路が複雑になるため、MATの効果が顕著に出やすい設計上の必然性

## 未解決の問い

- [[低周波領域（〜100Hz）への拡張は可能か]] — 現状は中高域中心
- [[MAT類似技術のコスト下限はどこか]] — 3Dプリント量産化で価格はどこまで下がるか
