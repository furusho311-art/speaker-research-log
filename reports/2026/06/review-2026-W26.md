---
date: 2026-06-28
type: weekly-query-review
period_start: 2026-06-22
period_end: 2026-06-28
queries_version_before: 1.2
queries_version_after: 1.3
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W26

## 期間
- 2026-06-22 〜 2026-06-28 の7日間

## 分析サマリ
本サイクルで取得できた日次レポートは06-24・06-27・06-28の3件で、06-22／06-23／06-25／06-26の4日分は日次タスクが未生成だった。先週に続き日次パイプラインの欠落が続いており、被覆ヒートの分母が3日に留まる点は引き続き人間判断を要する運用課題である。一方で取得できた3レポートはいずれも全12カテゴリを完全被覆しており、内容面のクエリ健全性そのものは高い水準を維持している。

報道面ではInfoComm 2026の閉幕（来場28,132名・807社）と各賞、Meyer Sound TIGRA／Martin Audio Wavefront Precision更新、Bose Professional DesignMax DM12SE、Shure MXA925といった業務用新製品が厚く、研究面ではメタマテリアル吸音（モード切替型・超薄型・LLM設計）とMEMSラウドスピーカー（xMEMS Sycamore量産）が複数論文で継続的に登場した。新出として目立ったのはOEMアンプモジュール勢（ICEpower SC400A2、Purifi、Hypex）とGaN系Class-D（Infineon CoolGaN）で、いずれも現行クエリの固有名詞リストに未収録だったため今回追加対象とした。

重心はpatrol-onlyの3件のみで feature 記事はゼロ、consumer 偏重は観測されず（0日）、業務用偏重は健全に保たれている。年号トークンは2026を継続。

## カテゴリ被覆ヒート
| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | 製品 プロ/PA/ライブサウンド | 3 | 健全 |
| 2 | 製品 設備音響/インストール | 3 | 健全 |
| 3 | 製品 スタジオモニター/放送モニター | 3 | 健全 |
| 4 | 製品 業務用 イマーシブ/ネットワーク | 3 | 健全 |
| 5 | 製品 業務用 アンプ/DSP/プロセッサ | 3 | 健全 |
| 6 | 技術 ドライバ/振動板/磁気回路/材料 | 3 | 健全 |
| 7 | 技術 DSP/Class-D/ANC/室内補正 | 3 | 健全 |
| 8 | 技術 空間音響/Atmos/WFS/3D Audio | 3 | 健全 |
| 9 | 技術 メタマテリアル/MEMS/CDT/プラズマ | 3 | 健全 |
| 10 | 研究 論文（音響学術誌） | 3 | 健全 |
| 11 | 研究 特許/規格 | 3 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 3 | 健全 |

※取得できた3日すべてで全カテゴリ被覆。0日・警告カテゴリなし。分母は3日（4日分は日次未生成）。

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ5（アンプ/DSP）: ICEpower、Purifi、Hypex ← うち ICEpower・Purifi を採用
- カテゴリ7（Class-D）: GaN / Infineon CoolGaN ← "GaN Class-D amplifier" として採用
- カテゴリ2（設備音響）: Bose Professional、Biamp、ClearOne（今回は見送り・健全のため）
- カテゴリ4（ネットワーク音響）: AuviTran、Aurora Multimedia（今回は見送り）
- 対象外（スコープ外＝ワイヤレスマイク）: Sennheiser Spectera / WMAS

## 引用ドメイン上位10
| ドメイン | 出現回数 | 種別 |
|---|---|---|
| audioxpress.com | 7 | 報道（専門） |
| sciencedirect.com | 5 | 公式（論文） |
| mixonline.com | 5 | 報道（専門） |
| ravepubs.com | 4 | 報道（専門） |
| genelec.com | 4 | 公式（メーカー） |
| commercialintegrator.com | 4 | 報道（専門） |
| bluetooth.com | 4 | 公式（規格団体） |
| xmems.com | 3 | 公式（メーカー） |
| prosoundweb.com | 3 | 報道（専門） |
| avnetwork.com | 3 | 報道（専門） |

※3レポート本文から抽出した計122 URLを集計。報道（専門メディア）と公式（メーカー/論文/規格）が概ね均衡。

## 重心バランス
- feature-domain 分布: pro-pa=0 / install=0 / studio=0 / tech=0 / research=0 / consumer=0（3件すべて patrol-only）
- consumer 出現率: 0/3 日 → 重心警告なし（業務用偏重を維持）

## クエリ更新内容
- version: 1.2 → 1.3、updated_at: 2026-06-24 → 2026-06-28、year_token: 2026（継続）
- カテゴリ5: OR羅列クエリに **ICEpower・Purifi** を追記（+2件）。OEMアンプモジュール市場の主要勢を補完。
- カテゴリ7: 新クエリ **"GaN Class-D amplifier {YEAR}"** を追加（+1件）。GaN系Class-D（Infineon CoolGaN等）の継続トレンドを捕捉。
- その他カテゴリ・副次ブロック・events（C12）: 変更なし。今後30日以内に該当する大型展示会がないため C12 は "InfoComm 2026 recap best of show"（recap）を維持。
- カテゴリ削除なし（被覆性原則）。追加は各カテゴリ最大2件の上限内。

## 次回観測ポイント
- **日次パイプラインの欠落**（W25・W26連続で4日分未生成）。クエリ起因ではなく日次タスク運用の問題であり、人間判断での復旧が必要。
- カテゴリ5/7に追加したICEpower・Purifi・GaNが次サイクルで実ヒットに繋がるかを検証。
- メタマテリアル吸音・MEMSラウドスピーカー（C9）の論文流入が継続するか、研究系C10/C11の被覆推移。
- 次の大型イベント（AES Convention/IBC＝秋）に向けたC12 events クエリの切替タイミング。

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-06-28*
