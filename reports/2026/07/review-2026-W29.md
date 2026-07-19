---
date: 2026-07-19
type: weekly-query-review
period_start: 2026-07-13
period_end: 2026-07-19
queries_version_before: "1.5"
queries_version_after: "1.6"
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W29

## 期間
- 2026-07-13 〜 2026-07-19 の7日間

## 分析サマリ
本週は 7 日のうち有効な日次レポートが 4 日分（07-15〜07-18）で、07-13・07-14 はリポジトリ上に存在せず欠測、07-19 は 07-15 と完全一致する重複保存（frontmatter の date も 2026-07-15）であった。分析は実データのある 4 日を対象とし、07-19 の重複はカウントから除外している。この重複・欠測は日次タスク側の保存不具合の可能性があり、次項の申し送りに記載した。

領域面では、業務用（プロ/PA・設備・スタジオ・イマーシブ・アンプ/DSP）と技術・研究の全 12 カテゴリが 4/4 日すべてでカバーされ、被覆は極めて健全だった。InfoComm 2026 と ISE 2026 の製品ラッシュを背景に、ライブ/インストール系の新製品が連日厚く取り上げられている。新出ブランドとしてフランスの Amadeus（NUMAX ライン/ポイントソース）、Optimal Audio（Column 8/16）、空間音響の TiMax（SpatAI v2・ローカル LLM 制御）、鉄窒化物磁石の Niron Magnetics（FaitalPRO 採用）が登場し、いずれも現行 OR 羅列クエリに未収録だったため追記対象とした。規格・研究側では corona discharge transducer（デュアル CDT 指向性制御, Acta Acustica）、push-pull MEMS 圧電（Sensors and Actuators A）、音響メタマテリアルの LLM 設計（Scientific Reports / Results in Engineering）が継続的にヒットしており、カテゴリ 9・10 の被覆は安定している。

重心は 4 日すべて patrol-only（feature 記事なし・feature-domain 空）で、consumer 偏重は観測されず健全。したがって副次ブロックの縮小や業務用クエリの追い増しは不要と判断した。0 日カテゴリも存在しないため、クエリの全面差し替えは行わず、新出固有名詞の最小追記（3 カテゴリ・計 4 ブランド）に留めた。

## カテゴリ被覆ヒート
| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | 製品 プロ/PA/ライブサウンド | 4 | 健全 |
| 2 | 製品 設備音響/インストール | 4 | 健全 |
| 3 | 製品 スタジオモニター/放送モニター | 4 | 健全 |
| 4 | 製品 業務用 イマーシブ/ネットワーク音響 | 4 | 健全 |
| 5 | 製品 業務用 アンプ/DSP/プロセッサ | 4 | 健全 |
| 6 | 技術 ドライバ/振動板/磁気回路/材料 | 4 | 健全 |
| 7 | 技術 DSP/Class-D/ANC/室内補正 | 4 | 健全 |
| 8 | 技術 空間音響/Atmos/WFS/3D Audio | 4 | 健全 |
| 9 | 技術 メタマテリアル/MEMS/CDT/プラズマ | 4 | 健全 |
| 10 | 研究 論文（音響学術誌） | 4 | 健全 |
| 11 | 研究 特許/規格 | 4 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 4 | 健全 |

※ 母数は有効レポート 4 日（07-15〜18）。07-13/14 欠測、07-19 は 07-15 の重複。

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ1（プロ/PA）: Amadeus, Optimal Audio → **採用（OR 羅列に追記）**
- カテゴリ4（イマーシブ/ネットワーク）: TiMax → **採用（OR 羅列に追記）**
- カテゴリ6（ドライバ/材料）: Niron Magnetics → **採用（iron nitride OR 句に追記）**
- カテゴリ2（設備）: AtlasIED, Fyne Audio → 保留（cat2 はブランド OR 句を持たず被覆も健全なため見送り）
- カテゴリ3（スタジオ）: Ø Audio → 保留（ニッチ HiFi 寄り、次週の継続性を見て判断）
- その他観測: Aurora Multimedia, Syntiant/Orosound/AudioSourceRE（エッジAI・M&A）, SB Audience, FaitalPRO, Cloud2GND, Filmsound.ai, Plugin Alliance/Brainworx（M&A）

## 引用ドメイン上位10
※ cited-urls-2026.txt の日付セクションが 07-04 以降途切れているため、最新蓄積ブロックの近似分布。
| ドメイン | 出現回数 | 種別（公式/報道/研究） |
|---|---|---|
| audioxpress.com | 137 | 報道（専門） |
| arxiv.org | 81 | 研究 |
| prosoundweb.com | 65 | 報道（プロ音響） |
| ecoustics.com | 61 | 報道 |
| mixonline.com | 42 | 報道 |
| whathifi.com | 32 | 報道（民生） |
| avnetwork.com | 30 | 報道（AV/設備） |
| fohonline.com | 25 | 報道（ライブ） |
| ravepubs.com | 24 | 報道（設備） |
| nature.com | 23 | 研究 |

公式メーカードメインは l-acoustics.com（19回）が最上位で、報道系（audioXpress・ProSoundWeb・Mix・AVNetwork・FOH）と研究系（arXiv・Nature・ScienceDirect・AES.org・MDPI）に厚く分散。業務用カテゴリの一次情報は依然として報道経由が中心で、公式ドメインの直接被覆は限定的。

## 重心バランス
- feature-domain 分布: pro-pa=0, install=0, studio=0, tech=0, research=0, consumer=0（4日すべて patrol-only）
- consumer 出現率: 0/4 日 → 重心警告なし

## クエリ更新内容
version 1.5 → 1.6、year_token は 2026 据置、updated_at 2026-07-15 → 2026-07-19。カテゴリ1のブランド OR 句末尾に「Amadeus OR Optimal Audio」を追加（+2）、カテゴリ4の空間音響 OR 句末尾に「TiMax」を追加（+1）、カテゴリ6の「iron nitride OR rare-earth-free magnet driver」を「iron nitride OR Niron Magnetics OR rare-earth-free magnet driver」に拡張（+1）。差し替え・削除はなし。カテゴリ数は 12 のまま、追加は各カテゴリ最大2件の上限内。今後30日以内の AES Automotive Audio 2026（7/29-31 Detroit）はカテゴリ12先頭に既存のため据置。

## 次回観測ポイント
- **日次タスクの保存整合性**: 07-13/14 の欠測と 07-19=07-15 の重複を次週も監視。連続する場合は日次側の日付ハンドリングを人間確認。
- カテゴリ2（設備）の新出 AtlasIED/Fyne Audio、カテゴリ3の Ø Audio が翌週も継続ヒットするか。継続すれば OR 句へ昇格。
- AES Automotive Audio 2026（7/29-31）開催週の cat12 ヒット密度。
- エッジAIオーディオ（Syntiant の連続 M&A）が業務用の恒常テーマ化するかどうか。

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-07-19*
