<%*
const title = tp.file.title;
-%>
---
title: "<% title %>"
aliases: []
type: product
maker: ""
category: ""              # speaker | driver | dsp | amp | metamaterial | software | mic | ...
sub-category: ""
released: ""
status: ""                # announced | shipping | EOL
price-usd: 0
specs: {}
tags: [product]
up: "[[MOC_Products]]"
created: <% tp.date.now("YYYY-MM-DD") %>
last-verified: <% tp.date.now("YYYY-MM-DD") %>
generated-by: human
---

# <% title %>

## 概要
（製品の位置づけ、ターゲット、価格、差別化ポイントを2〜3段落）

## スペック
| 項目 | 値 |
|---|---|
| ドライバー構成 | |
| 周波数特性 | |
| 出力 | |
| サイズ・重量 | |
| 接続 | |
| 価格（米国） | |
| 発売 | |

## 採用技術
- [[Concept/Technology]]

## メーカー
- [[Maker Company]]

## 関連製品（同シリーズ・前後継・競合）
- 同シリーズ：[[Sibling Product]]
- 前世代：[[Predecessor]]
- 競合：[[Competitor Product]]

## レビュー・分析記事
- [media name](url)
- [media name](url)

## Mentioned in
```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link)
SORT file.name DESC
```

## メモ
- 
