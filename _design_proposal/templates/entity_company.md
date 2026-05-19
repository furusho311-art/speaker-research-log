<%*
// Templater template — Company entity
const title = tp.file.title;
-%>
---
title: "<% title %>"
aliases: []
type: company
country: ""
founded: ""
parent-company: ""
website: ""
tags: [company]
up: "[[MOC_Companies]]"
created: <% tp.date.now("YYYY-MM-DD") %>
last-verified: <% tp.date.now("YYYY-MM-DD") %>
generated-by: human
---

# <% title %>

## 概要
（1〜3段落でこの企業の位置づけ、注力領域、特徴的な技術を記述）

## 主要製品
- [[Product Name 1]]
- [[Product Name 2]]

## 主要技術・関連概念
- [[Concept 1]]
- [[Concept 2]]

## キーパーソン
- [[Person 1]] — 役職・役割

## 提携・買収・関連企業
- 親会社：[[Parent Company]]
- 提携：[[Partner]] — 提携内容
- 子会社/関連：[[Subsidiary]]

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

## 関連論文・特許（Dataview）
```dataview
TABLE WITHOUT ID
  file.link AS "Title",
  year,
  venue
FROM "30_Literature"
WHERE contains(string(authors), this.file.name) OR contains(string(file.outlinks), this.file.link)
SORT year DESC
```

## Mentioned in（Daily Reportでの言及）
```dataview
TABLE WITHOUT ID
  file.link AS "Date",
  theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link) OR contains(string(tags), this.file.name)
SORT file.name DESC
```

## メモ
- 
