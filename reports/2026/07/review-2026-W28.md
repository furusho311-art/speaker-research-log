---
date: 2026-07-06
type: weekly-query-review
period_start: 2026-06-30
period_end: 2026-07-06
queries_version_before: 1.3
queries_version_after: 1.4
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W28

## 期間
- 2026-06-30 〜 2026-07-06 の7日間

## 分析サマリ
今週は日次レポート7日分のうち3日分（07-01・07-02・07-04）のみが有効に取得できた。06-30・07-05・07-06 は GitHub 上に未生成（404）で、加えて 07-03 は本文・frontmatter がいずれも 07-02 の完全な複製であり、日次タスク側のファイル生成・コミット時のコピー誤りと判断される。実質的な観測日数は3日にとどまり、日次タスクの稼働安定性が引き続き人間側の確認事項として残る。

一方、取得できた3日分の被覆品質は高い。3日いずれも全12カテゴリ（pro-pa〜industry）を漏れなくカバーしており、カバー0日・警告水準（1〜2日）のカテゴリは存在せず、全カテゴリが健全水準にある。新出の固有名詞・規格が今週は特に豊富で、業務用ドライバ材料の潮流として Niron Magnetics × FaitalPRO による窒化鉄（Iron Nitride）レアアースフリー磁石ドライバの商用化（YG Acoustics Carmel 3）、空間音響では ISO/IEC 23090-4 MPEG-I Immersive Audio の FDIS 昇格、増幅では GaN Class-D の設計事例（EPC9192・CRI D-Amp Driver）が目立った。ブランド面では Theory Professional（SR-221.3／P9）、Barefoot Sound（Footprint 02 Gen2）、HOLOPLOT／DirectOut（Milan ネットワーク）、LEA Professional（Connect Series）が新規に登場した。

重心は3日とも patrol-only（feature-domain 空欄）で、consumer 偏重は一切なし（consumer 0日）。副次ブロック縮小や業務用強化といった重心是正は不要で、プロ/業務用中心の設計思想は維持できている。

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

*観測日数=3日（07-01/07-02/07-04）。全カテゴリが観測全日で被覆されたため一律「健全」。*

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ1（プロ/PA）: Theory Professional（SR-221.3, P9）→ **採用**
- カテゴリ3（スタジオモニター）: Barefoot Sound（Footprint 02 Gen2, MEME/SPOC）→ **採用**
- カテゴリ4（イマーシブ/ネットワーク）: HOLOPLOT（既存Holoplot重複のため見送り）／DirectOut（PRODIGY Milan.IO）→ **DirectOut採用**
- カテゴリ5（アンプ/DSP）: LEA Professional（Connect Series 702D/704D）→ **採用**
- カテゴリ6（ドライバ/材料）: Niron Magnetics／Iron Nitride／rare-earth-free magnet → **新クエリ採用**
- カテゴリ12（業界/学会）: Audiotonix（DPA/Wisycom/Austrian Audio 三社買収, 審査中）→ 既存M&Aクエリで捕捉可のため追記見送り
- 参考（未採用）: EPC（GaN）, CRI Middleware, Opus Technologies, xMEMS Cypress/Sycamore（C7/C9は既存クエリで捕捉済み）

## 引用ドメイン上位10
| ドメイン | 出現回数 | 種別 |
|---|---|---|
| audioxpress.com | 16 | 報道（専門誌） |
| arxiv.org | 6 | 公式（プレプリント） |
| prosoundweb.com | 5 | 報道 |
| news.dolby.com | 5 | 公式（メーカー） |
| mixonline.com | 4 | 報道 |
| techradar.com | 3 | 報道 |
| researchgate.net | 3 | 公式（学術） |
| avnetwork.com | 3 | 報道 |
| avnation.tv | 3 | 報道 |
| aes.org | 3 | 公式（学会） |

*報道系（audioXpress/ProSoundWeb/Mix/AVNetwork）が上位を占め、公式は Dolby・arXiv・AES・メーカー各社（nironmagnetics.com, epc-co.com, sonexos.com 等）が続く。業務用メーカー公式ドメインの出現は健全。*

## 重心バランス
- feature-domain 分布: pro-pa=0, install=0, studio=0, tech=0, research=0, consumer=0（全3日 patrol-only のため feature 記事なし）
- consumer 出現率: 0 / 3日 → **重心警告なし**

## クエリ更新内容
今サイクルは v1.3 → v1.4 へ更新した。年号トークンは 2026 のまま据え置き（年替わりなし）。新出固有名詞を業務用カテゴリの OR 連結クエリへ追記する形で、カテゴリ1に「Theory Professional」、カテゴリ3に「Barefoot Sound」、カテゴリ4に「DirectOut」、カテゴリ5に「LEA Professional」を各1件追加した（いずれも1カテゴリ最大2件の制約内）。カテゴリ6には今週最大の技術トピックであるレアアースフリー磁石を捕捉するため新クエリ「iron nitride OR rare-earth-free magnet driver {YEAR}」を追加。カテゴリ12は既に終了した「InfoComm 2026 recap best of show」を、今後30日以内（7/29〜31・デトロイト）に開催される「AES Automotive Audio Conference 2026 Detroit」へ差し替えた。0日カテゴリが存在しないため書き換え（同義語振替）は発生せず、カテゴリ削除もなし。追加4件・新規1件・差替1件でクエリ総数の膨張は最小限に抑えた。

## 次回観測ポイント
- 日次タスクの稼働安定性: 今週は7日中3日のみ有効（3日欠落＋1日複製）。次回は生成欠落・複製バグの再発有無を最優先で確認する。
- カテゴリ12: 差し替えた AES Automotive Audio Conference 2026（7/29-31）の捕捉状況と、Audiotonix 三社買収（DPA/Wisycom/Austrian Audio）の H1 2026 完了審査の続報。
- カテゴリ6: 窒化鉄／レアアースフリー磁石クエリが実際にヒットを生むか。生まなければ次サイクルで表現を「Niron Magnetics OR iron nitride loudspeaker {YEAR}」等へ振替検討。
- 空間音響（C8）: MPEG-I Immersive Audio（ISO/IEC 23090-4）の FDIS→IS 昇格続報。

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-07-06*
