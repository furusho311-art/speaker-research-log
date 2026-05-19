<%*
const title = tp.file.title;
-%>
---
title: "<% title %>"
type: moc
aliases: []
up: "[[Home]]"
covers: []
last-curated: <% tp.date.now("YYYY-MM-DD") %>
tags: [moc]
---

# <% title %>

## このMOCの守備範囲
（この分野が何を含み・何を含まないかを2〜4行で）

## 中心概念
- [[Concept 1]] — 一行説明
- [[Concept 2]]

## 主要プレイヤー
- [[Company 1]] — 役割
- [[Company 2]]

## 進行中の問い
- [[Claim/Question]]

## 関連MOC
- [[MOC_Sibling]]

## 最近この分野で言及された日次レポート
```dataview
TABLE WITHOUT ID file.link AS "Date", theme
FROM "reports"
WHERE econtains(covers-moc, this.file.link) OR contains(string(tags), "TAG_KEYWORD")
SORT file.name DESC
LIMIT 20
```

## このMOC配下の概念ノート
```dataview
LIST
FROM "20_Concepts"
WHERE up = this.file.link
SORT file.name ASC
```

## このMOC配下の関連企業・製品
```dataview
TABLE WITHOUT ID file.link AS "Entity", type, category
FROM "10_Entities"
WHERE up = this.file.link OR contains(string(up), this.file.name)
SORT file.name ASC
```

## このMOC配下の論文（読了状態別）
```dataview
TABLE WITHOUT ID file.link AS "Paper", year, venue, read-status, rating
FROM "30_Literature/papers"
WHERE contains(string(tags), "TAG_KEYWORD")
SORT year DESC
```

## このMOC配下のスタブ（未検証AI生成）
```dataview
LIST
FROM "00_Inbox/_stubs"
WHERE contains(file.outlinks, this.file.link) OR contains(string(up), this.file.link)
```
