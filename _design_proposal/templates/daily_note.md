<%*
const today = tp.date.now("YYYY-MM-DD");
const ddd = tp.date.now("ddd");
const yyyy = tp.date.now("YYYY");
const mm = tp.date.now("MM");
-%>
---
date: <% today %>
type: daily-note
tags: [daily]
---

# <% today %> (<% ddd %>)

## 今日のDaily Report
- [[reports/<% yyyy %>/<% mm %>/<% today %>|本日のレポート]]

## 今日生まれたノート
```dataview
LIST
WHERE file.cday = this.file.day
AND !contains(file.folder, "Templates")
AND !contains(file.folder, "50_Calendar")
SORT file.ctime ASC
```

## 今日更新されたノート
```dataview
LIST
WHERE file.mday = this.file.day AND file.cday != this.file.day
SORT file.mtime DESC
```

## 思考・気づき・問い
- 

## To-followup
- 

## To-research（深掘り候補）
- 
