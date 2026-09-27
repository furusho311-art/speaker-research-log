---
date: 2026-09-27
type: weekly-query-review
period_start: 2026-09-21
period_end: 2026-09-27
queries_version_before: 2.0
queries_version_after: 2.1
generated-by: ai-claude-speaker-research-query-review
---

# 週次クエリレビュー: 2026-W39

## 期間

- 2026-09-21 〜 2026-09-27 の7日間
- 取得ファイル: 4件 / 7日（09-21, 09-22, 09-23, 09-24）
- **有効な日次レポート: 実質2件（09-21, 09-24）**

## ⚠️ 最重要事項: 日次レポートの重複書き出し（再発）

日次パイプラインは 09-21 から復旧したが、`reports/2026/09/2026-09-22.md` と `2026-09-23.md` は `2026-09-21.md` と **md5 完全一致**（frontmatter の `date` も 3 件とも `2026-09-21`）だった。W38 で指摘した `2026-08-10.md` = `2026-08-05.md` と同型の不具合の再発である。

コミットメッセージとの食い違いが原因の手がかりになる。09-22 のコミット `aab0572e` は「CEDIA Expo 2026中心・プロ/PA重心（covers 5カテゴリ）」を名乗り、同日の cited-urls コミット `7baa3eed` にも Procella / Origin Acoustics / Trinnov / DALI / Sonos 等、CEDIA 関連の新規 URL 32 件が追記されている。つまり **調査自体は実行されたが、push されたレポート本文だけが前日のローカルファイルのまま**だった可能性が高い。09-23 の cited-urls コミット `869f9936` は +170/-180 の差し替えで純増 0 件であり、この日の実内容は復元できない。さらに 09-25〜09-27 は未生成である。

このため、本レビューのカテゴリ被覆は 2 日分のデータに基づく。「1〜2日＝警告」のルールを機械的に当てると全カテゴリが警告になるが、これはクエリの不備ではなく **データ欠損によるもの**と判断し、クエリの全面見直しは行わなかった。

## 分析サマリ

有効な 2 日間はいずれも `patrol-only` で、全 12 カテゴリを網羅していた。内容は業務用が中心だった。09-21 は d&b audiotechnik の SL-Series シンガポール国立競技場常設導入と北京・鳥の巣での Soundscape スタジアム展開、EAW Newport の NT208L / NT116S、PMC 35 周年の新 Main Monitor 群、Aurora Multimedia の Dante/AES67 over Wi-Fi が軸になった。09-24 は Martin Audio Wavefront Precision の IP54 化と DISPLAY 3、Meyer Sound TIGRA / 1800-LFC、Renkus-Heinz Iconyx Gen5 の大学講堂導入、SSL TCA Tour、Voice Coil 誌で計測された Eighteen Sound ND3G（ガラス振動板）と Purifi WG147 が並んだ。プロ/PA の一次ソース（d&b、Meyer、Martin Audio）が拾えており、W38 で指摘した「主要ブランド一次情報の欠落」は改善傾向にある。

技術面では、GaN Class-D（Orchard Audio Starkrimson、Peak Amplification AM-400C2G / Infineon CoolGaN）が 2 日とも登場し、既存クエリ `GaN Class-D amplifier {YEAR}` が機能している。新しい軸としては、アクティブアコースティクス（Fulcrum Venueflex、L-ISA Ambiance）と、UT Austin の MEMS マイクを超音波トランスデューサとして使うパラメトリックアレイ論文が現れた。どちらも現行クエリでは直接狙えていない領域である。

重心は健全で、`consumer` を主題にした日は 0 日だった。ただし、失われた 09-22 分の cited-urls には Klipsch RP-500PM、DALI Vega、Sonos 等の民生 URL が一定数含まれていた。CEDIA 期間はレジデンシャル寄りの話題が増えるため、副次ブロックへの流入は季節要因として許容範囲とみる。

## カテゴリ被覆ヒート

| ID | カテゴリ | カバー日数（有効2日中） | ステータス |
|---|---|---|---|
| 1 | 製品 プロ/PA/ライブサウンド | 2 | 警告（データ欠損起因） |
| 2 | 製品 設備音響/インストール | 2 | 警告（データ欠損起因） |
| 3 | 製品 スタジオモニター/放送モニター | 2 | 警告（データ欠損起因） |
| 4 | 製品 イマーシブ/ネットワーク音響 | 2 | 警告（データ欠損起因） |
| 5 | 製品 アンプ/DSP/プロセッサ | 2 | 警告（データ欠損起因） |
| 6 | 技術 ドライバ/振動板/磁気回路/材料 | 2 | 警告（データ欠損起因） |
| 7 | 技術 DSP/Class-D/ANC/室内補正 | 2 | 警告（データ欠損起因） |
| 8 | 技術 空間音響/Atmos/WFS/3D Audio | 2 | 警告（データ欠損起因） |
| 9 | 技術 メタマテリアル/MEMS/CDT/プラズマ | 2 | 警告（データ欠損起因） |
| 10 | 研究 論文（音響学術誌） | 2 | 警告（データ欠損起因） |
| 11 | 研究 特許/規格 | 2 | 警告（データ欠損起因） |
| 12 | 業界 M&A/決算/学会/規制 | 2 | 警告（データ欠損起因） |

※ 重複ファイルを含めて機械集計すると 4 日（健全）になるが、実データではないため採用しない。有効な 2 日はどちらも 12/12 被覆で、0 日のカテゴリはない。

## 新出固有名詞（カテゴリ別追加候補）

過去の日次レポート 124 件の entities と照合し、初出のものを抽出した（企業 4 / 製品 7 / 概念 13）。

- **カテゴリ6（採用）**: Eighteen Sound, Purifi（ND3G ガラス振動板・WG147 ウェーブガイドツイーター）
- **カテゴリ4（採用・概念クエリ）**: Active Acoustics / L-ISA Ambiance / Fulcrum Venueflex
- **カテゴリ9（採用・概念クエリ）**: Parametric array loudspeaker（MEMS 超音波）
- カテゴリ2（見送り）: Renkus-Heinz IC8/IC16、Sonance PS-C85T は既存ブランドで被覆済
- カテゴリ1（見送り）: d&b SL-Series は既存 OR 羅列で被覆済
- 見送り（民生・非対象）: BMW、Fosi Audio
- 継続保留: Poyun Group, Redrock Acoustics（W38 からの持ち越し）

## 引用ドメイン上位10

集計対象: 09-21, 09-22, 09-24 の cited-urls 追記分 89 URL（09-23 は純増 0）

| ドメイン | 出現回数 | 種別（公式/報道） |
|---|---|---|
| mixonline.com | 7 | 報道 |
| prosoundweb.com | 7 | 報道 |
| audioxpress.com | 5 | 報道（専門誌） |
| residentialsystems.com | 3 | 報道（レジデンシャル） |
| cepro.com | 3 | 報道（レジデンシャル） |
| genelec.com | 3 | 公式 |
| fohonline.com | 2 | 報道 |
| installation-international.com | 2 | 報道 |
| svconline.com | 2 | 報道 |
| fulcrum-acoustic.com | 2 | 公式 |

報道は Mix / ProSoundWeb / audioXpress の三本柱に FOH、Installation、SVC が加わり、プロ/設備系メディアへ分散していて健全である。CEDIA 期間のため Residential Systems と CE Pro が浮上した。

## 重心バランス

- feature-domain 分布: pro-pa=0, install=0, studio=0, tech=0, research=0, consumer=0（有効 2 日とも `patrol-only`）
- consumer 出現率: 0 / 2 日 → **重心警告なし**。副次ブロックは無変更

## クエリ更新内容

v2.0 から v2.1 への更新は小幅に留めた。カテゴリ6では、ドライバ系の固有名詞 OR 羅列に Eighteen Sound と Purifi を追加した。カテゴリ4には、会場の残響を電子的に制御するアクティブアコースティクスを狙うクエリ（`active acoustics OR L-ISA Ambiance OR Meyer Constellation OR Fulcrum Venueflex {YEAR}`）を新設した。カテゴリ9には、パラメトリックアレイと超音波 MEMS を狙うクエリを新設した。0 日のカテゴリがないため、差し替えは行っていない。

カテゴリ12の先頭クエリ（NAB Show New York 10/21〜22、AES Show Nashville 10/30〜11/1）は、今後 30 日の範囲に入るため据え置いた。年号は 2026 のまま変更していない。

```
■ version: 2.0 → 2.1
■ year_token: 2026 → 2026（変更なし）
■ updated_at: 2026-09-20 → 2026-09-27
■ カテゴリ別変更:
  - [4] イマーシブ/ネットワーク: クエリ追加 1件
  - [6] ドライバ/材料: OR羅列に +2（Eighteen Sound, Purifi）
  - [9] MEMS/メタマテリアル: クエリ追加 1件
  - 他カテゴリ: 変更なし
■ 副次ブロック: 変更なし
■ 重心警告: なし
```

## 次回観測ポイント

1. **重複書き出しバグの修正確認（最優先）**。日次の push 前に「本文の `date` とファイル名の一致」「前日ファイルとのハッシュ不一致」を検査する仕組みが必要である。日次の SKILL.md は本タスクの管理対象外のため、人間側で対応してほしい
2. **09-25 以降の欠落原因**。アプリが稼働していない時間帯に実行がスキップされている可能性がある（W38 と同じ仮説）
3. 新設したカテゴリ4（アクティブアコースティクス）とカテゴリ9（パラメトリックアレイ）のクエリが実際にヒットするか
4. feature 記事が引き続き 0 件。有効日が 7 日揃ったうえで feature 比率が 0 のままなら、日次側の選定ロジックを確認する
5. AES Show Nashville（10/30〜）の直後に、カテゴリ12の先頭クエリを Inter BEE 2026 などへ差し替える

---
*週次レビュー生成: Speaker Research Query Review Bot | 2026-09-27*
