---
date: 2026-06-17
type: weekly-query-review
period_start: 2026-06-11
period_end: 2026-06-17
queries_version_before: "none(404)"
queries_version_after: "1.1"
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W25

## 期間
- 2026-06-11 〜 2026-06-17 の7日間（うち日次レポート取得は3件: 06-11/06-12/06-13。06-14〜06-17は未生成のためスキップ）

## 分析サマリ
本サイクルは `index/queries.json` が未配置（GET 404）だったため、SKILL のインライン seed を基に v1.0 を生成し、同時に第1サイクルの強化を適用して v1.1 として確定した。取得できた3日間の日次レポートはいずれも全12カテゴリを `covers-categories` に含んでおり、被覆ヒートは全カテゴリが「健全（3日）」。プロ/PA・設備・スタジオ・イマーシブ・研究まで偏りなくカバーされ、手薄なカテゴリは存在しなかった。

週を通じた最大の文脈は InfoComm 2026（6/17〜19, ラスベガス）の開幕で、出展プレビュー第三〜四波が連日大量に流入した。新出ブランド・規格としては、ライブサウンドで Coda Audio（ViFORCE/WIDE BAND Cardioid）と Martin Audio（Wavefront Precision/DISPLAY 3）、イマーシブで HOLOPHONIX（v2.4.0）、MEMS で xMEMS（Cypress/Sycamore 量産予定）が継続的に登場し、現行 seed の固有名詞 OR 羅列クエリではカバーしきれていなかった。これらを各該当カテゴリへ最大2件ルールの範囲で追記した。

重心は健全。feature/patrol-only 比率は 1/2、feature-domain は唯一の feature 記事（06-13）が pro-pa で、consumer 起点の特集は0日。consumer 偏重の兆候はなく、副次ブロック（HiFi/民生）の縮小は不要と判断した。

## カテゴリ被覆ヒート
| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | 製品 プロ/PA/ライブサウンド | 3 | 健全 |
| 2 | 製品 設備音響/インストール | 3 | 健全 |
| 3 | 製品 スタジオモニター/放送モニター | 3 | 健全 |
| 4 | 製品 業務用 イマーシブ/ネットワーク音響 | 3 | 健全 |
| 5 | 製品 業務用 アンプ/DSP/プロセッサ | 3 | 健全 |
| 6 | 技術 ドライバ/振動板/磁気回路/材料 | 3 | 健全 |
| 7 | 技術 DSP/Class-D/ANC/室内補正 | 3 | 健全 |
| 8 | 技術 空間音響/Atmos/WFS/3D Audio | 3 | 健全 |
| 9 | 技術 メタマテリアル/MEMS/CDT/プラズマ | 3 | 健全 |
| 10 | 研究 論文（音響学術誌） | 3 | 健全 |
| 11 | 研究 特許/規格 | 3 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 3 | 健全 |

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ1（プロ/PA）: Coda Audio, Martin Audio（採用）／DAS Audio, Funktion-One, dBTechnologies, Outline, Alcons Audio, KV2 Audio, 1 SOUND（次回候補）
- カテゴリ4（イマーシブ/ネットワーク）: HOLOPHONIX（採用）／Dante over Wi-Fi, 1 SOUND Panorama（次回候補）
- カテゴリ5（アンプ/DSP）: Peak Amplification（GaN Class-D, 次回候補）
- カテゴリ9（MEMS/メタマテリアル）: xMEMS（採用、Cypress/Sycamore）
- カテゴリ12（業界/イベント）: SDE（System Design Exchange 騒音予測標準）, M&W Pro Audio, Audiotonix（DPA/Wisycom/Austrian Audio 取得）, inMusic×Native Instruments（次回候補）

## 引用ドメイン上位10
（cited-urls-2026.txt 累積ベース。直近7日単独の切り出しは未実装のため累積分布で代替）

| ドメイン | 出現回数 | 種別 |
|---|---|---|
| audioxpress.com | 105 | 報道（業界誌） |
| arxiv.org | 67 | 研究（プレプリント） |
| ecoustics.com | 53 | 報道（民生/AV） |
| prosoundweb.com | 45 | 報道（プロ） |
| whathifi.com | 28 | 報道（民生HiFi） |
| mixonline.com | 28 | 報道（プロ） |
| nature.com | 21 | 研究 |
| l-acoustics.com | 18 | 公式メーカー |
| avnetwork.com | 18 | 報道（AV/設備） |
| techradar.com | 16 | 報道（民生） |

公式メーカードメインで唯一上位に入ったのは l-acoustics.com で、報道経由の被覆が中心。d&b・Meyer・JBL 等の公式ドメインは上位10に出現しておらず、業務用カテゴリは一次情報（メーカー公式）よりプロ系メディア（prosoundweb/mixonline/avnetwork）依存の傾向。

## 重心バランス
- feature-domain 分布: pro-pa=1, install=0, studio=0, tech=0, research=0, consumer=0
- feature/patrol-only: 1 / 2
- consumer 出現率: 0/3日 → 重心警告なし

## クエリ更新内容
- version: none(404) → 1.1（seed v1.0 生成と第1サイクル強化を同時適用）
- year_token: 2026（変更なし）
- カテゴリ1: OR羅列クエリに +"Coda Audio OR Martin Audio"（追加2件相当・クエリ1本に統合）
- カテゴリ4: イマーシブ OR クエリに +"HOLOPHONIX"
- カテゴリ9: "MEMS speaker {YEAR}" → "xMEMS OR MEMS speaker {YEAR}"（差替1件）
- カテゴリ12: 先頭に +"InfoComm 2026 product announcement"（開幕6/17に合わせ強化）
- 副次ブロック: 変更なし
- 削除: なし（被覆性原則によりカテゴリ・既存クエリは維持）

## 次回観測ポイント
- InfoComm 2026 終了（6/19）後、カテゴリ12のイベントクエリを次の主要展示会（Inter BEE / AES Convention 等）へ更新するか要判断
- 06-14〜06-17 の日次レポートが欠落。次回は実取得日数が回復するか確認し、欠落が続く場合は daily タスクの稼働状況を申し送る
- カテゴリ5（アンプ/DSP）は GaN Class-D（Peak Amplification, Infineon CoolGaN）が継続話題。次サイクルで OR クエリへの追記を検討
- 公式メーカードメインの被覆が薄いため、業務用カテゴリの site: 指定クエリ追加を将来検討（被覆の一次情報化）

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-06-17*
