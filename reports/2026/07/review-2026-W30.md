---
date: 2026-07-26
type: weekly-query-review
period_start: 2026-07-20
period_end: 2026-07-26
queries_version_before: 1.6
queries_version_after: 1.7
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W30

## 期間
- 2026-07-20 〜 2026-07-26 の7日間

## 分析サマリ
今週は7日すべてが patrol-only モードで、12カテゴリが例外なく7/7日カバーされた極めて健全な週だった。被覆ヒートに警告（1〜2日）も重大警告（0日）も存在せず、クエリ集の骨格は現状の業務用偏重方針のまま十分に機能していると判断できる。feature-domain はすべて空（巡回のみ）で consumer 露出は0日、重心バランスの偏りも観測されなかったため、副次ブロックの縮小や業務用カテゴリの緊急補強は不要である。

一方で新出固有名詞は豊富だった。設備音響（cat2）では SoundTube の TAA/BAA 準拠 Dante PoE 天井スピーカー、Sonance、DAS Audio、MSE Audio、会議室向けに参入した Audio-Technica ATSP-30 など、政府・教会・商業施設向けの動きが目立った。プロ/PA（cat1）では K-array のカーディオイドサブ、RCF EVOX、HK Audio、Danley が新製品で登場。ドライバ/材料（cat6）では Lavoce Italiana の新型コンプレッションドライバーと SB Audience、鉄窒化物磁石で ASPINA×Niron の供給契約が進展した。ネットワーク音響では Aurora Multimedia の Dante/AES67 over WiFi、Milan AVB（d&b×L-Acoustics）が具体化。業界再編は Boris FX/iZotope、Audiotonix（DPA・Wisycom・Austrian Audio）、Barco/VerVent（Focal/Naim）、onsemi/Synaptics と大型案件が連続した。

イベント面では AES 第6回 Automotive Audio Conference（7/29-31 デトロイト）が30日以内に迫るが、これは既に cat12 先頭クエリに固定済みで追加不要。CEDIA Expo 2026 が複数レポートで反復出現したため events クエリに追記した。引用ドメインは prosoundweb・audioXpress・mixonline・ravepubs といった業界報道が上位を占め、公式メーカー（martin-audio・dbtechnologies）と学術（arxiv・aes.org・patents.google）がバランスよく続いた。

## カテゴリ被覆ヒート
| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | プロ/PA/ライブサウンド | 7 | 健全 |
| 2 | 設備音響/インストール | 7 | 健全 |
| 3 | スタジオモニター/放送モニター | 7 | 健全 |
| 4 | 業務用 イマーシブ/ネットワーク音響 | 7 | 健全 |
| 5 | 業務用 アンプ/DSP/プロセッサ | 7 | 健全 |
| 6 | ドライバ/振動板/磁気回路/材料 | 7 | 健全 |
| 7 | DSP/Class-D/ANC/室内補正 | 7 | 健全 |
| 8 | 空間音響/Atmos/WFS/3D Audio | 7 | 健全 |
| 9 | メタマテリアル/MEMS/CDT/プラズマ | 7 | 健全 |
| 10 | 研究 論文（音響学術誌） | 7 | 健全 |
| 11 | 研究 特許/規格 | 7 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 7 | 健全 |

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ1（プロ/PA）: RCF, K-array, HK Audio, Danley, 1 Sound → **RCF・K-array を OR 追加**
- カテゴリ2（設備音響）: SoundTube, Sonance, DAS Audio, MSE Audio, Audio-Technica(ceiling) → **設備ブランド OR クエリを新設**
- カテゴリ4（ネットワーク）: Aurora Multimedia, AuviTran, Violet Audio, Avnu/Milan AVB（既存 Dante/AVB クエリで捕捉済）
- カテゴリ6（ドライバ/材料）: Lavoce Italiana, SB Audience, ASPINA → **Lavoce・SB Audience を OR 追加**
- カテゴリ9（MEMS）: Syntiant, Rayking, Cypress（xMEMS 既収録で捕捉）
- カテゴリ12（業界）: Boris FX/iZotope, Audiotonix, Barco/VerVent, onsemi/Synaptics（既存 acquisition クエリで捕捉）

## 引用ドメイン上位10
| ドメイン | 出現回数 | 種別 |
|---|---|---|
| prosoundweb.com | 17 | 報道 |
| audioxpress.com | 14 | 報道 |
| mixonline.com | 13 | 報道 |
| ravepubs.com | 8 | 報道 |
| arxiv.org | 7 | 学術 |
| martin-audio.com | 7 | 公式 |
| auto.aes.org | 6 | 学会公式 |
| aes.org | 6 | 学会公式 |
| avnetwork.com | 5 | 報道 |
| fohonline.com | 5 | 報道 |

（補足: dbtechnologies.com 4件・patents.google.com 4件が続く。報道メディアが上位を占め、公式メーカー／学術ソースが健全に混在。）

## 重心バランス
- feature-domain 分布: pro-pa=0, install=0, studio=0, tech=0, research=0, consumer=0（全7日 patrol-only）
- consumer 出現率: 0/7日 → **重心警告なし**。業務用偏重の方針は維持されている。

## クエリ更新内容
version を 1.6 → 1.7 に更新（year_token は 2026 据置）。0日/警告カテゴリが皆無のため既存クエリの差し替えは行わず、新出ブランドの追補に限定した。cat1 の主要 OR リストに `RCF`・`K-array` を追加、cat6 の磁気回路 OR クエリに `Lavoce`・`SB Audience` を追加、cat2 には設備音響ブランドを束ねた新クエリ `SoundTube OR Sonance OR DAS Audio OR Biamp OR Atlas IED {YEAR}` を新設した。cat12 の展示会 events クエリに `CEDIA` を追記。追加はいずれも1カテゴリ最大2件の上限を遵守し、クエリ肥大を抑制した。

## 次回観測ポイント
- **cat2（設備音響）**: 新設した設備ブランド OR クエリのヒット寄与を次週特に注視。教会・政府・軍事施設向け導入事例の増減を追う。
- **cat12（業界）**: AES Automotive Audio（7/29-31）直後の報道流入と、CEDIA Expo 2026 に向けた製品発表の立ち上がりを確認。
- **cat9（MEMS）**: xMEMS Cypress の量産・Rayking 提携が民生 TWS 側に偏っていないか、業務用との重心を監視。

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-07-26*
