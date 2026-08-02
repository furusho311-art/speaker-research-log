---
date: 2026-08-02
type: weekly-query-review
period_start: 2026-07-27
period_end: 2026-08-02
queries_version_before: 1.7
queries_version_after: 1.8
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W31

## 期間
- 2026-07-27 〜 2026-08-02 の7日間（日次レポート 7/7 件取得）

## 分析サマリ
今週は7日間すべてが patrol-only モードで、全12カテゴリが例外なく毎日カバーされた極めて健全な週だった。被覆ヒートは全カテゴリ 7/7 日で「健全」判定、警告（1〜2日）・重大警告（0日）カテゴリはゼロ。feature-domain はすべて空（patrol-only）で consumer の突出も無く、重心は業務用側に保たれている。

固有名詞の面では業務用ハードウェアの新規登場が目立った。ライブ/PA では TT+ Audio（RCF傘下）が GTX 7CP パッシブ・カーディオイド・ラインアレイモジュールで設備音響市場へ展開。設備音響では AtlasIED が Atlas+Fyne IsoFlare ペンダントと AZP Smart アンプを投入し Fyne Audio と Origin Acoustics（Class-D 分散オーディオ A850/A1650）が新出。アンプ/DSP では Hypex、ドライバでは B&C Speakers（DE640 リングラジエーター）が観測網に引っかかった。ネットワーク音響では RCF×DirectOut 提携、Aurora Multimedia の Dante-over-WiFi、Theory Audio Design の DLC コントローラー、SSL TCA Tour が話題を占めた。研究面はメタマテリアル（IAM/Advanced Materials、低周波吸音）と MEMS（xMEMS Sycamore-W/-headphone、push-pull MEMS）が引き続き厚い。

イベント軸では AES 第6回 Automotive Audio Conference（デトロイト、7/29–31）が会期を終え、queries.json 先頭の同イベント固定クエリが陳腐化した。今後は IBC 2026、CEDIA Expo 2026、AES Show Nashville 2026 が観測対象として立ち上がる。規制面では EU AI Act 第50条（AI生成音声の透明性義務）が 8/2 施行開始。

## カテゴリ被覆ヒート
| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | プロ/PA/ライブサウンド | 7 | 健全 |
| 2 | 設備音響/インストール | 7 | 健全 |
| 3 | スタジオモニター/放送モニター | 7 | 健全 |
| 4 | イマーシブ/ネットワーク音響 | 7 | 健全 |
| 5 | アンプ/DSP/プロセッサ | 7 | 健全 |
| 6 | ドライバ/振動板/磁気回路/材料 | 7 | 健全 |
| 7 | DSP/Class-D/ANC/室内補正 | 7 | 健全 |
| 8 | 空間音響/Atmos/WFS/3D Audio | 7 | 健全 |
| 9 | メタマテリアル/MEMS/CDT/プラズマ | 7 | 健全 |
| 10 | 研究 論文 | 7 | 健全 |
| 11 | 研究 特許/規格 | 7 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 7 | 健全 |

## 新出固有名詞（カテゴリ別追加候補）
- カテゴリ1（プロ/PA）: TT+ Audio ★追加済
- カテゴリ2（設備音響）: Fyne Audio ★追加済, Origin Acoustics ★追加済
- カテゴリ5（アンプ/DSP）: Hypex ★追加済
- カテゴリ6（ドライバ）: B&C Speakers ★追加済
- カテゴリ4（ネットワーク）: Aurora Multimedia, RCF×DirectOut（今回は見送り／既存Dante網でカバー）
- 未採用（consumer/hi-fi 寄りのため対象外）: Sonus faber, Magico, B&W, KEF, Bang & Olufsen

## 引用ドメイン上位10
| ドメイン | 出現回数 | 種別 |
|---|---|---|
| audioxpress.com | 13 | 報道 |
| prosoundweb.com | 10 | 報道 |
| aes.org | 9 | 学術 |
| arxiv.org | 7 | 学術 |
| auto.aes.org | 7 | 学術 |
| ecoustics.com | 6 | 報道 |
| leaprofessional.com | 4 | 公式 |
| ravepubs.com | 4 | 報道 |
| advanced.onlinelibrary.wiley.com | 4 | 学術 |
| avnation.tv | 4 | 報道 |

報道は audioXpress / ProSoundWeb / AVNation / rAVe / installation-international が主軸で、業務用専門メディアに厚く寄っている。学術は AES（auto.aes.org 含む）・arXiv・Wiley（Advanced Materials 系）が中心で、メタマテリアル/MEMS 論文の受け皿として機能。メーカー公式は LEA Professional が突出、AtlasIED・Biamp・RCF・DirectOut・ttaudio・icepoweraudio 等の公式ドメインも個別記事で出現しており、業務用カテゴリの一次情報は実際に取れている。

## 重心バランス
- feature-domain 分布: pro-pa=0, install=0, studio=0, tech=0, research=0, consumer=0（7日すべて patrol-only、feature 記事なし）
- consumer 出現率: 0/7 日 → 重心警告なし。業務用偏重は健全に維持

## クエリ更新内容
version 1.7 → 1.8。year_token は 2026 のまま据置。新出ブランドを OR 羅列クエリへ計5件追記（cat1: +TT+ Audio、cat2: +Fyne Audio/+Origin Acoustics、cat5: +Hypex、cat6: +B&C Speakers、いずれも1カテゴリ最大2件の上限内）。cat12 は会期終了した「AES Automotive Audio Conference 2026 Detroit」固定クエリを「IBC 2026 CEDIA Expo 2026 audio product announcement」に差替え、直近30〜45日の展示会へ観測窓を前送り。0日カテゴリが無いためクエリ全面書き換えは実施せず、副次ブロック・その他カテゴリは変更なし。

## 次回観測ポイント
- IBC 2026（9月・アムステルダム）と CEDIA Expo 2026（9月）関連の製品発表がカテゴリ2/4/12でどれだけ拾えるか
- AES Show Nashville 2026 の会期確定後、cat10/12 での学会クエリ強化要否を判断
- EU AI Act 第50条施行を受けた「AI生成音声マーキング」関連の規格・製品動向（cat11/12）
- メタマテリアル/MEMS の論文集中（cat9）が来週も継続するか、SAM 2026（8月末パリ）の反映状況

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-08-02*
