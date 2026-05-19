<%*
const title = tp.file.title;
-%>
---
title: "<% title %>"
type: literature
sub-type: paper           # paper | patent | standard | book | review
authors: []
year: 
venue: ""
doi: ""
arxiv: ""
url: ""
citekey: "<% title %>"
zotero-uri: ""
read-status: inbox        # inbox | reading | read | skim | abandon
rating: 0                 # 1-5
read-date: ""
my-take: ""
related: []
cites: []
cited-by: []
tags: [lit/paper, status/inbox]
up: "[[MOC_Literature]]"
created: <% tp.date.now("YYYY-MM-DD") %>
generated-by: human
---

# <% title %>

> [!info] Metadata
> - **Authors**: 
> - **Year**: 
> - **Venue**: 
> - **DOI**: 
> - **arXiv**: 

## Abstract（原文）
> 

## 自分の要約（My summary）
- 

## キーアイデア
1. 
2. 
3. 

## 手法
- 

## 結果・主張
- 

## 限界・批判
- 

## この論文が引用している重要文献
- [[citekey]]

## この論文を引用している（あとから埋める）
```dataview
LIST
FROM "30_Literature"
WHERE contains(cites, this.file.link)
```

## 関連概念
- [[Concept]]

## My take（一言評価）
**Rating**: ☆☆☆☆☆
**Comment**: 

## Mentioned in
```dataview
TABLE WITHOUT ID file.link AS "Date", theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link)
SORT file.name DESC
```
