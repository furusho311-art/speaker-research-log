---
date: 2026-09-20
type: weekly-query-review
period_start: 2026-09-14
period_end: 2026-09-20
fallback_window_start: 2026-08-05
fallback_window_end: 2026-08-11
queries_version_before: 1.9
queries_version_after: 2.0
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W38

## 期間

- 本来の対象期間: 2026-09-14 〜 2026-09-20（7日間）
- **取得できた日次レポート: 0件 / 7日**
- 代替分析ウィンドウ: 2026-08-05 〜 2026-08-11（取得7件、うち1件は重複のため実質6日）

## ⚠️ 最重要事項: 日次パイプラインの停止

`speaker-research-daily` の出力は **2026-08-11 を最後に停止している**。リポジトリの最新コミットは 2026-08-10T21:39:51Z の `📎 cited-urls-2026: +35 URLs from 2026-08-11` であり、`reports/2026/` 配下に `09` ディレクトリは存在しない。約 40 日分（2026-08-12 〜 2026-09-20）のレポートが欠落している。

このため本サイクルの「直近7日分析」は成立せず、取得可能な最新ウィンドウ（2026-08-05 〜 08-11）を代替対象として分析した。クエリ更新は行ったが、**そこで得た被覆ヒートは 6 週間前の状態を反映したものであり、現在のクエリ健全性を保証しない**。日次タスクのスケジュール状態・PAT 有効期限・実行ログの確認が人間側で必要である。

あわせてデータ品質上の問題を 1 件検出した。`reports/2026/08/2026-08-10.md` は `2026-08-05.md` とバイト単位で同一（md5 一致）であり、frontmatter の `date` は両者とも `2026-08-02` を指している。日次生成側で前日ファイルをコピーしたまま日付を書き換えなかった可能性が高い。

## 分析サマリ

代替ウィンドウの6日間は、全12カテゴリが例外なく 6/6 日カバーされており、被覆性の観点では極めて健全だった。0日カテゴリ・警告カテゴリはいずれも発生していない。ただし 6 日すべてが `patrol-only` であり、`feature-title` / `feature-domain` は全件空欄だった。深掘り記事が一本も立っていない点は、被覆の広さと引き換えに掘り下げが浅くなっている兆候として次サイクルで注視すべきである。

内容面では業務用の重心が明確に保たれていた。Bose Professional による Fulcrum Acoustic 買収（親会社名を2027年2月に 802 LABS へ変更）、Martin Audio の Wavefront Precision 大規模アップグレードと DISPLAY 3、Powersoft の MM-Force / Spixel / PRIMA、Renkus-Heinz C-Series のインド大学講堂導入、KV2 Audio ESD シリーズの IP55 取得といったプロ/PA・設備案件が中心を占めた。技術側では Bluetooth SIG の High Data Throughput（HDT）ドラフト仕様が 3 日にわたって出現し、Ceva / Actions Technology の ATS296X による 7.5 Mbps 実装まで具体化していた。学術側では POSTECH の MiPAL（Nature Communications）、低周波音響メタマテリアルのレビュー（Advanced Engineering Materials）、デュアル CDT による広帯域指向性制御（Acta Acustica）が拾えており、カテゴリ9・10の掘削力は機能している。

重心バランスは健全で、`consumer` 主題の日は 0 日だった。KEF LS LUXE、Focal Diva Alta Utopia、Klipsch Reference Premiere III、Sonus faber Olympica G3 といった民生機は副次ブロック相当の従属的扱いに留まっており、副次ブロックの縮小は不要と判断した。

## カテゴリ被覆ヒート

| ID | カテゴリ | カバー日数 | ステータス |
|---|---|---|---|
| 1 | 製品 プロ/PA/ライブサウンド | 6 / 6 | 健全 |
| 2 | 製品 設備音響/インストール | 6 / 6 | 健全 |
| 3 | 製品 スタジオモニター/放送モニター | 6 / 6 | 健全 |
| 4 | 製品 イマーシブ/ネットワーク音響 | 6 / 6 | 健全 |
| 5 | 製品 アンプ/DSP/プロセッサ | 6 / 6 | 健全 |
| 6 | 技術 ドライバ/振動板/磁気回路/材料 | 6 / 6 | 健全 |
| 7 | 技術 DSP/Class-D/ANC/室内補正 | 6 / 6 | 健全 |
| 8 | 技術 空間音響/Atmos/WFS/3D Audio | 6 / 6 | 健全 |
| 9 | 技術 メタマテリアル/MEMS/CDT/プラズマ | 6 / 6 | 健全 |
| 10 | 研究 論文（音響学術誌） | 6 / 6 | 健全 |
| 11 | 研究 特許/規格 | 6 / 6 | 健全 |
| 12 | 業界 M&A/決算/学会/規制 | 6 / 6 | 健全 |

※ 本期間（09-14〜09-20）のレポートは存在しないため、上表は 2026-08-05〜08-11 の代替ウィンドウに基づく。

## 新出固有名詞（カテゴリ別追加候補）

ウィンドウ内で言及された企業 64 / 製品 63 / 概念 41 のうち、現行 `queries.json` の固有名詞 OR 羅列に未収録だったものを抽出し、1カテゴリ最大2件の制約で採用した。

- **カテゴリ1（採用）**: Funktion-One, Mackie
- **カテゴリ2（採用）**: Sennheiser, Fulcrum Acoustic
- **カテゴリ6（採用）**: SEAS, Celestion
- **カテゴリ9（採用）**: Knowles, Syntiant
- **カテゴリ8（概念として採用）**: Bluetooth HDT
- カテゴリ3（見送り）: 新出ブランドなし（PMC・ADAM Audio・Genelec・KRK はすべて収録済）
- カテゴリ4（保留候補）: Audinate — `Dante` が既存クエリで被覆済のため見送り
- カテゴリ5（保留候補）: Allen & Heath — ミキサー領域でありアンプ/DSPカテゴリとは軸が異なるため見送り
- カテゴリ7（保留候補）: Infineon（CoolGaN）— `GaN Class-D amplifier {YEAR}` で被覆済のため見送り
- カテゴリ6（保留候補）: Poyun Group, Redrock Acoustics — 枠上限により次サイクル送り

## 引用ドメイン上位

| ドメイン | 出現回数 | 種別 |
|---|---|---|
| audioxpress.com | 20 | 報道（専門誌） |
| bluetooth.com | 9 | 公式（規格団体） |
| prosoundweb.com | 8 | 報道 |
| ecoustics.com | 5 | 報道 |
| arxiv.org | 5 | 学術（プレプリント） |
| avnation.tv | 4 | 報道 |
| xmems.com | 4 | 公式（メーカー） |
| avnetwork.com | 4 | 報道 |
| commercialintegrator.com | 3 | 報道 |
| advanced.onlinelibrary.wiley.com | 3 | 学術（査読誌） |
| lsionline.com | 3 | 報道 |
| genelec.com | 3 | 公式（メーカー） |
| mixonline.com | 3 | 報道 |
| martin-audio.com | 3 | 公式（メーカー） |
| sweetwater.com | 3 | 小売 |

報道系は audioXpress を軸に ProSoundWeb / AVNation / AV Network / Commercial Integrator / LSI と分散しており健全。公式メーカードメインは xMEMS・Genelec・Martin Audio・DirectOut に限られ、プロ/PA の主要ブランド（L-Acoustics, d&b, Meyer Sound 等）の一次ソースが 1 件も出現していない。一次情報取得が報道経由に偏っている点は構造的な弱点である。

## 重心バランス

- `feature-domain` 分布: pro-pa=0, install=0, studio=0, tech=0, research=0, consumer=0（全6日が `patrol-only` のため未設定）
- `covers-categories` ベースの実質重心: 業務用カテゴリ（1〜5）が全日カバー、民生は副次的言及のみ
- consumer 出現率: 0 / 6 日 → **重心警告なし**。副次ブロックは無変更とした

## クエリ更新内容

```
■ version: 1.9 → 2.0
■ year_token: 2026 → 2026（変更なし）
■ updated_at: 2026-08-09 → 2026-09-20
■ カテゴリ別変更:
  - [1] プロ/PA: OR羅列に +2（Funktion-One, Mackie）
  - [2] 設備音響: OR羅列に +2（Sennheiser, Fulcrum Acoustic）
  - [6] ドライバ/材料: OR羅列に +2（SEAS, Celestion）
  - [8] 空間音響: クエリ追加 1件（+"Bluetooth HDT high data throughput lossless audio {YEAR}"）
  - [9] MEMS/メタマテリアル: OR羅列に +2（Knowles, Syntiant）
  - [12] 業界: 先頭イベントクエリを差替
        -"CEDIA Expo 2026 IBC 2026 audio product announcement"
        +"AES Show Nashville 2026 NAB Show New York 2026 audio product announcement"
  - 他カテゴリ（3,4,5,7,10,11）: 変更なし
■ 副次ブロック: 変更なし
■ 重心警告: なし
■ ファイルサイズ: 5,137 → 5,407 bytes
```

カテゴリ12の差替根拠は開催日程の経過である。前サイクル（W32）で先頭に置いた CEDIA Expo 2026 と IBC 2026 はいずれも 9 月上旬〜中旬に閉幕済みで、9月20日時点では発表前倒し検索としての価値を失っていた。これを、今後 6 週間以内に開催が確定している **NAB Show New York 2026（10月21〜22日・Javits Center）** と **AES Show Nashville 2026（10月30日〜11月1日・Gaylord Opryland）** に振り替えた。AES Show は 2026 年からニューヨーク／ロサンゼルス中心の従来開催地を離れてナッシュビルへ移る初年度であり、出展発表の立ち上がりを早めに捕捉する価値が高い。

## 次回観測ポイント

1. **日次パイプラインの復旧確認（最優先）**。復旧後は最初の 7 日で全12カテゴリの被覆ヒートを再測定し、6週間の空白中にクエリが陳腐化していないかを検証する
2. **`patrol-only` 偏重の是正**。代替ウィンドウでは feature 記事が 0 件だった。復旧後も feature 比率が 0 のまま続くなら、日次側の feature 選定ロジックの確認が必要
3. **一次ソース被覆**。公式メーカードメインの出現が xMEMS / Genelec / Martin Audio / DirectOut に限られている。主要プロ/PAブランドの公式プレスが拾えているかを次サイクルで確認する
4. **Bluetooth HDT の追跡**。ドラフト仕様から商用 SoC（Ceva / Actions Technology ATS296X）まで一気に進行中。カテゴリ8の新規クエリが実際にヒットを生むかを検証する
5. **802 LABS リブランド**。Bose Professional は 2027年2月に社名変更予定。カテゴリ1・12の固有名詞羅列に `802 LABS` を追加する時期を見極める
6. **年号切替の準備**。`year_token` は 2026 のまま。2027年初回実行時に自動切替が正しく作動するかを確認する
7. **レポート重複バグ**。`2026-08-10.md` = `2026-08-05.md` の完全重複を確認済。日次側の書き出し処理を要調査

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-09-20*
