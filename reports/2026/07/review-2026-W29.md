---
date: 2026-07-15
type: weekly-query-review
period_start: 2026-07-09
period_end: 2026-07-15
queries_version_before: 1.4
queries_version_after: 1.5
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W29

## 期間
- 2026-07-09 〜 2026-07-15 の7日間（取得できた日次レポートは4日分：07-09, 07-10, 07-11, 07-12）

## 分析サマリ
今週は業務用（プロ/PA・設備・ネットワーク音響）の新製品ニュースが引き続き厚く、Focal Diva Alta Utopia のワイヤレス旗艦発表、d&b CCLi コンパクト・カーディオイド・ラインアレイの出荷開始、dBTechnologies VIO L1608、Renkus-Heinz RH4D 四次元ビームステアリングなど、ライブ／設備の両面で確度の高い一次情報が取得できた。取得できた4日分すべてで全12カテゴリがカバーされており、被覆の穴（0日カテゴリ）や consumer 偏重は観測されなかった。重心は業務用・研究に健全に寄っている。

規格・ネットワーク面では MOTU 3機種の Milan AVB 認証取得、ATSC 1.0 地上波での Dolby Atmos 配信（Dolby × TV Azteca）という新しい適用事例が登場した。M&A では HARMAN による Sound United 買収完了、Syntiant の Nasdaq S-1 提出（Orosound・AudioSourceRE 買収を含むエッジAIオーディオの垂直統合）が業界動向として重要。研究では PSZ 向けニューラルフィルタ、Flow-HOA、低周波音響メタマテリアル、ラウドスピーカー線形化など幅広い領域がヒットした。

新出ブランドの多くは既に前サイクル（v1.3〜v1.4）で OR 羅列に取り込み済みだったため、今回の追加は最小限にとどめた。データ品質面の注意点として、07-12 のレポートが 07-10 の内容の複製になっており、07-13〜07-15 は未生成（404）だった。日次側の生成状況を次回確認したい。

## カテゴリ被覆ヒート
| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | プロ/PA/ライブサウンド | 4 | 健全 |
| 2 | 設備音響/インストール | 4 | 健全 |
| 3 | スタジオモニター/放送モニター | 4 | 健全 |
| 4 | イマーシブ/ネットワーク音響 | 4 | 健全 |
| 5 | アンプ/DSP/プロセッサ | 4 | 健全 |
| 6 | ドライバ/振動板/磁気回路/材料 | 4 | 健全 |
| 7 | DSP/Class-D/ANC/室内補正 | 4 | 健全 |
| 8 | 空間音響/Atmos/WFS/3D Audio | 4 | 健全 |
| 9 | メタマテリアル/MEMS/CDT/プラズマ | 4 | 健全 |
| 10 | 論文（音響学術誌） | 4 | 健全 |
| 11 | 特許/規格 | 4 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 4 | 健全 |

※ カバー日数は取得できた4日分に対する値（各レポートが12カテゴリ全てをカバー）。

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ3（スタジオモニター）: Dynaudio → OR 羅列に追加
- カテゴリ5（アンプ/DSP）: Orchard Audio, Peak Amplification → OR 羅列に追加
- 参考（既存クエリで捕捉済みのため追加せず）: REDCATT（cat6）, Renkus-Heinz（cat2/4 install beam-steering）, Syntiant（cat12 エッジAI/M&A）, Amadeus/HOLOPHONIX（cat4, 既収録）

## 引用ドメイン上位（直近サンプル）
| ドメイン | 出現回数 | 種別 |
|---|---|---|
| bluetooth.com | 3 | 公式/規格 |
| installation-international.com | 3 | 報道 |
| powersoft.com | 3 | 公式 |
| latamstage.com | 2 | 報道 |
| mixonline.com | 2 | 報道 |
| eaw.com | 2 | 公式 |
| linea-research.co.uk | 2 | 公式 |
| martin-audio.com | 2 | 公式 |
| lsionline.com | 2 | 報道 |
| avnetwork.com | 1 | 報道 |

## 重心バランス
- feature-domain 分布: 取得4日すべて patrol-only（feature-domain 空）。feature 記事は0本。
- consumer 出現率: 0/4 日。副次（HiFi/民生）ブロックの縮小は不要。
- 重心警告: なし。業務用・研究への健全な偏重を維持。

## クエリ更新内容
- version: 1.4 → 1.5、updated_at: 2026-07-06 → 2026-07-15、year_token: 2026（据置）
- [3] スタジオモニター OR 羅列に「Dynaudio」を追加
- [5] アンプ/DSP OR 羅列に「Orchard Audio」「Peak Amplification」を追加
- [12] 業界: 「AES Automotive Audio Conference 2026 Detroit」は前サイクルで先頭追加済み・開催（7/29-31、30日以内）につき据置
- クエリ本数は不変（既存 OR 羅列への追記のみ、肥大化を回避）

## 次回観測ポイント
- 日次レポートの生成状況（07-12 の複製・07-13〜15 未生成）を確認し、必要なら daily 側の運用を点検
- AES Automotive Audio 2026（7/29-31, デトロイト）開催週の車載オーディオ関連ヒットの厚みを注視
- IBC 2026（9月）に向けた業界カテゴリ（cat12）の展示会クエリ更新タイミングを次回検討
- Renkus-Heinz など設備ビームステアリング系ブランドを cat2/cat4 の OR 羅列でどう捕捉するか（cat2 に OR 羅列が無いため構造的な検討事項）

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-07-15*
