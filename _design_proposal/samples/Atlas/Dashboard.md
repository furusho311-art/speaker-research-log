---
title: "📊 Dashboard"
type: dashboard
last-refreshed: 2026-05-19
tags: [dashboard]
---

# 📊 Vault Dashboard

> Vault健康度の一画面集約。**月次でこのページを開いて、未MOC化・未検証スタブ・読了率をチェックする**のがキュレーションの基本動作。

## 統計

```dataviewjs
const total = dv.pages('!"Templates"').length;
const reports = dv.pages('"reports"').length;
const companies = dv.pages('"10_Entities/Company"').length;
const products = dv.pages('"10_Entities/Product"').length;
const concepts = dv.pages('"20_Concepts"').length;
const lit = dv.pages('"30_Literature"').length;
const mocs = dv.pages('"90_Atlas"').where(p => p.type === "moc").length;
const stubs = dv.pages('"00_Inbox/_stubs"').length;

dv.paragraph(
  `**Total notes**: ${total}  \n` +
  `**Daily Reports**: ${reports}  \n` +
  `**Companies**: ${companies} | **Products**: ${products} | **Concepts**: ${concepts}  \n` +
  `**Literature**: ${lit}  \n` +
  `**MOCs**: ${mocs}  \n` +
  `**Stubs (未検証)**: ${stubs}`
);
```

---

## 🚨 要キュレーション

### 未MOC化ノート（up:: なし）

```dataview
LIST
FROM ("20_Concepts" OR "10_Entities")
WHERE !up
SORT file.ctime DESC
LIMIT 15
```

### AI生成・未検証スタブ

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  generated-by,
  file.ctime AS "Created"
FROM "00_Inbox/_stubs"
WHERE !contains(string(tags), "verified")
SORT file.ctime DESC
LIMIT 20
```

### 14日以上経過したスタブ（要処理）

```dataviewjs
const cutoff = dv.date("today").minus(dv.duration("14 days"));
const stale = dv.pages('"00_Inbox/_stubs"').where(p => p.file.ctime < cutoff);
dv.table(["Note", "Age (days)"], 
  stale.map(p => [p.file.link, Math.round(dv.duration(dv.date("today") - p.file.ctime).days)])
       .sort(r => -r[1])
);
```

---

## 📈 トレンド

### 過去30日でmention増加したエンティティ Top 10

```dataviewjs
const since = dv.date("today").minus(dv.duration("30 days"));
const reports = dv.pages('"reports"').where(p => p.file.cday >= since);
const counts = {};
for (const r of reports) {
  for (const link of r.file.outlinks) {
    if (link.path.startsWith("10_Entities/") || link.path.startsWith("20_Concepts/")) {
      counts[link.path] = (counts[link.path] || 0) + 1;
    }
  }
}
const rows = Object.entries(counts)
  .map(([path, n]) => [dv.fileLink(path), n])
  .sort((a, b) => b[1] - a[1]).slice(0, 10);
dv.table(["Entity", "Mentions (30d)"], rows);
```

### 過去90日で新たに登場した企業

```dataviewjs
const since = dv.date("today").minus(dv.duration("90 days"));
const newCompanies = dv.pages('"10_Entities/Company"').where(p => p.file.ctime >= since);
dv.table(["Company", "Created"], newCompanies.map(p => [p.file.link, p.file.ctime.toFormat("yyyy-MM-dd")]));
```

---

## 📚 読了状態

### Literature 読了率

```dataviewjs
const lit = dv.pages('"30_Literature"');
const read = lit.where(p => p["read-status"] === "read").length;
const reading = lit.where(p => p["read-status"] === "reading").length;
const skim = lit.where(p => p["read-status"] === "skim").length;
const inbox = lit.where(p => p["read-status"] === "inbox").length;
const total = lit.length;
const rate = total > 0 ? Math.round((read+skim)/total*100) : 0;
dv.paragraph(
  `**Read**: ${read}  **Skim**: ${skim}  **Reading**: ${reading}  **Inbox**: ${inbox}  (Total ${total})  \n` +
  `**Read/Skim 率**: ${rate}%`
);
```

### 高評価・未読の論文（読みたい優先順）

```dataview
TABLE WITHOUT ID
  file.link AS "Paper",
  authors,
  year,
  venue
FROM "30_Literature/papers"
WHERE read-status = "inbox" AND rating >= 3
SORT year DESC
LIMIT 10
```

---

## 🗺️ MOC更新状況

```dataview
TABLE WITHOUT ID
  file.link AS "MOC",
  last-curated,
  length(file.inlinks) AS "Backlinks"
FROM "90_Atlas"
WHERE type = "moc"
SORT last-curated ASC
```

> 最終キュレーションが古いMOCから順に並ぶ。月次でこのリストの上から処理する。
