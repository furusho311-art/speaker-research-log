---
title: "MOC: Companies"
type: moc
aliases: [企業一覧, Companies]
up: "[[Home]]"
last-curated: 2026-05-19
tags: [moc, meta/companies]
---

# MOC: Companies

スピーカー・音響業界に登場するすべての企業・組織のメタMOC。地域・規模・分野で複数の切り口を提供する。

## 全企業一覧（Dataview自動生成）

```dataview
TABLE WITHOUT ID
  file.link AS "Company",
  country,
  founded,
  length(file.inlinks) AS "Backlinks"
FROM "10_Entities/Company"
SORT length(file.inlinks) DESC
```

## 地域別

### 日本 🇯🇵
```dataview
LIST FROM "10_Entities/Company"
WHERE country = "Japan" OR country = "JP" OR country = "日本"
SORT file.name ASC
```

### 米国 🇺🇸
```dataview
LIST FROM "10_Entities/Company"
WHERE country = "USA" OR country = "US" OR country = "United States"
SORT file.name ASC
```

### 欧州 🇪🇺
```dataview
LIST FROM "10_Entities/Company"
WHERE contains(["UK","Germany","Denmark","Netherlands","France","Sweden","Spain","Italy","Belgium","Switzerland","Norway","Finland","Austria"], country)
SORT file.name ASC
```

### 中国・台湾・韓国 🌏
```dataview
LIST FROM "10_Entities/Company"
WHERE contains(["China","Taiwan","Korea","South Korea"], country)
SORT file.name ASC
```

## 分野別タグでフィルタ

### HiFiスピーカー専業
```dataview
LIST FROM #company AND #area/hifi
SORT file.name ASC
```

### プロオーディオ（PA・スタジオ）
```dataview
LIST FROM #company AND #area/pro-audio
SORT file.name ASC
```

### MEMS / 半導体音響
```dataview
LIST FROM #company AND #area/mems
SORT file.name ASC
```

### ネットワークオーディオ
```dataview
LIST FROM #company AND #area/networking
SORT file.name ASC
```

### 研究機関・大学
```dataview
LIST FROM #company AND #area/research
SORT file.name ASC
```

## mention回数 Top 20（過去30日）

```dataviewjs
const since = dv.date("today").minus(dv.duration("30 days"));
const reports = dv.pages('"reports"').where(p => p.file.cday >= since);
const counts = {};
for (const r of reports) {
  for (const link of r.file.outlinks) {
    if (link.path.startsWith("10_Entities/Company")) {
      counts[link.path] = (counts[link.path] || 0) + 1;
    }
  }
}
const rows = Object.entries(counts)
  .map(([path, n]) => [dv.fileLink(path), n])
  .sort((a, b) => b[1] - a[1]).slice(0, 20);
dv.table(["Company", "Mentions (30d)"], rows);
```

## 未編集スタブ

```dataview
LIST FROM "00_Inbox/_stubs"
WHERE type = "company"
SORT file.ctime DESC
```
