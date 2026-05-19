---
title: "Brane Audio"
aliases: ["Brane", "ブレーンオーディオ"]
type: company
country: USA
founded: 
parent-company: ""
website: https://braneaudio.com
tags: [company, area/hifi, area/portable, region/usa]
up: "[[MOC_Companies]]"
created: 2026-05-19
last-verified: 2026-05-19
generated-by: human
---

# Brane Audio

## 概要

米国のスタートアップ。**Membrane-Based Resonator (MBR)** という独自の磁気回路アーキテクチャを核に、ポータブルスピーカーで「サイズに対して桁違いに低い低域」を打ち出している。代表機種 **Brane X** は小型筐体ながら30Hz級の低域再生を謳い、2025年以降スピーカー業界紙・レビューサイトで頻繁に取り上げられている。

技術的差別化点はMBR——通常のドライバーで低域を出すには大口径かバスレフが必須だが、Brane Audioは**磁石を相対運動させる**アーキテクチャで、コンパクトな筐体で低共振周波数を実現したと主張する。

## 主要製品

- [[Brane X]] — フラッグシップ・ポータブルスピーカー
- [[Brane X2]] — 次世代版（2026予定/発表時期未確認）

## 主要技術・関連概念

- [[Membrane-Based Resonator (MBR)]] — Brane Audio独自の磁気駆動アーキテクチャ
- [[Compact Subwoofer Design]]

## キーパーソン

- [[Daniel Cooley]] — Founder/CEO（要verify）

## 提携・買収・関連企業

- （調査中）

## 製品一覧

```dataview
TABLE WITHOUT ID
  file.link AS "Product",
  category,
  released
FROM "10_Entities/Product"
WHERE maker = this.file.link OR contains(string(maker), this.file.name)
SORT released DESC
```

## Mentioned in（Daily Reportでの言及）

```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link) OR contains(string(tags), "Brane Audio")
SORT file.name DESC
```

## メモ

- 既存レポート群で**累計47回**言及。新興企業ながら高頻度に登場、業界注目度高い
- MBR技術の物理的詳細（磁気回路の構造、振動板駆動方式）は要追加調査
- 競合：Devialet Mania、Klipsch Detroit、Marshall Tufton、Bose SoundLink Max 系のポータブル高音質市場

## 要verify

- [ ] founded year
- [ ] founder の氏名
- [ ] MBRの技術詳細・特許番号
