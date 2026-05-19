<%*
const title = tp.file.title;
-%>
---
title: "<% title %>"
aliases: []
type: concept
parent: ""                # 上位概念へのwikilink
domain: []                # [acoustics, materials, signal-processing, perception, ...]
tags: [concept]
up: "[[MOC_Concepts]]"
created: <% tp.date.now("YYYY-MM-DD") %>
last-verified: <% tp.date.now("YYYY-MM-DD") %>
generated-by: human
---

# <% title %>

## 一行定義
（概念を一文で表す。後から自分でも読み返せる粒度に）

## 概要
（背景、なぜ重要か、どこで使われるか）

## 物理・数学的基礎
（必要に応じて数式・図・参考論文）

## 主な実装・応用例
- [[Product 1]] — 採用形態
- [[Product 2]] — 採用形態

## 関連概念
- 上位：[[Parent Concept]]
- 兄弟：[[Sibling Concept]]
- 下位：[[Child Concept]]
- 対比：[[Contrasting Concept]]

## 主要文献
- [[citekey1]]
- [[citekey2]]

## 関連企業・研究機関
- [[Company]] — 役割
- [[Lab/Institute]] — 役割

## このConceptが言及されたDaily Report
```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link) OR contains(string(tags), this.file.name)
SORT file.name DESC
LIMIT 20
```

## 自分の理解（Evergreen化中）
- 

## 未解決の問い
- 
