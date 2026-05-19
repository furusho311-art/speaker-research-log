---
title: "Dual Corona Discharge Transducers for Broadband Directivity Control"
type: literature
sub-type: paper
authors: [Hervé Lissek, Rahim Vesal]
year: 2026
venue: "Acta Acustica"
volume: 10
issue: 1
doi: "10.1051/aacus/2025xxxx"
arxiv: "2508.18232"
url: https://acta-acustica.edpsciences.org/articles/aacus/full_html/2026/01/aacus250124/aacus250124.html
citekey: lissek2026cdt
zotero-uri: "zotero://select/items/@lissek2026cdt"
read-status: skim
rating: 4
read-date: 2026-05-19
my-take: "膜なきトランスデューサで広帯域指向性制御を実証。スタックでモノポール/ダイポール同時制御は強い。実用化はまだ遠いがアーキテクチャ衝撃度高い。"
related: ["[[コロナ放電トランスデューサ (CDT)]]", "[[プラズマスピーカー]]", "[[非相反音響メタマテリアル]]"]
cites: []
cited-by: []
tags: [lit/paper, tech/cdt, tech/plasma-speaker, status/skim, area/research]
up: "[[MOC_Drivers]]"
created: 2026-05-19
generated-by: human
---

# Dual Corona Discharge Transducers for Broadband Directivity Control

> [!info] Metadata
> - **Authors**: Hervé Lissek, Rahim Vesal (EPFL Wave Engineering Laboratory)
> - **Year**: 2026
> - **Venue**: Acta Acustica, Vol. 10 Issue 1
> - **DOI**: 10.1051/aacus/2025xxxx
> - **arXiv**: [2508.18232](https://arxiv.org/abs/2508.18232)
> - **URL**: https://acta-acustica.edpsciences.org/articles/aacus/full_html/2026/01/aacus250124/aacus250124.html

## Abstract（要旨）
> Corona discharge transducers (CDT) generate sound by ionizing a thin layer of air via a corona discharge from needle-like electrodes, with the resulting ionized air vibrating under an applied AC electric field. Unlike conventional electrodynamic loudspeakers, CDTs have no mechanical diaphragm, eliminating mass-loading and resonance constraints on bandwidth. This paper introduces a **dual CDT** configuration that stacks two CDTs to simultaneously and independently control monopole (in-phase) and dipole (anti-phase) radiation modes. By exploiting the millimetric thickness of each CDT, the inter-element spacing remains a small fraction of wavelength up to ultrasonic frequencies, enabling **broadband formation of cardioid, super-cardioid, and figure-of-eight patterns**. Analytical modeling, full-wave simulations, and anechoic measurements of a prototype are reported.

## 自分の要約（My summary）

- **問題**：従来の指向性制御（カーディオイドスピーカー）は2本以上のドライバーで同相/逆相駆動するが、ドライバー間距離が波長と同程度になる高周波で破綻
- **解**：CDTは振動板を持たないためミリメートル厚に作れる→**素子間距離が広帯域で波長以下を保てる**→広帯域カーディオイド形成が可能
- **手法**：CDT 2基スタック構成、解析モデル＋全波シミュレーション＋無響室実験プロトタイプ
- **結果**：モノポール/ダイポール独立制御の実証、広帯域カーディオイド指向パターン確認

## キーアイデア

1. **振動板を捨てる**ことで指向性制御の物理的制約（素子間距離 vs 波長）を解放する
2. **スタック型 CDT** で、機械的に近接配置できないドライバーペアを電気的に実現
3. 同時に**非相反メタマテリアル**やANCへの応用も視野

## 手法

- 単独CDTの音響モデル（イオン化空気層の電気-音響等価回路）
- デュアル構成での位相制御理論
- COMSOLによる全波電気-音響連成シミュレーション
- 無響室での自由音場測定（極座標応答パターン取得）

## 結果・主張

- カーディオイド・ハイパーカーディオイド・双指向性（figure-8）パターンを**100Hz〜数十kHz**の広帯域で形成できることを実証（要：論文本文で正確な帯域確認）
- モノポール・ダイポール独立制御により**従来不可能だった放射パターン合成**が可能

## 限界・批判

- **音圧レベルが低い**（コロナ放電原理上）→ 大音量用途には不向き
- **オゾン発生**の課題（コロナ放電の副生物）。実用化には換気・抑制設計が必要
- **電源**：高電圧（kVオーダー）が必要で安全設計のハードル
- 実験プロトタイプの寸法・耐久性は商用には未到達

## この論文が引用している重要文献

- （アクセス後に追加）プラズマスピーカー基礎理論論文群
- アクティブ・カーディオイド指向性制御の古典論文

## 関連概念

- [[コロナ放電トランスデューサ (CDT)]]
- [[プラズマスピーカー]]
- [[Cardioid 指向性パターン]]
- [[Dipole 放射]]
- [[非相反音響メタマテリアル]] — 著者らの他研究との接続

## My take

**Rating**: ★★★★☆

**Comment**:
脱・振動板アーキテクチャの可能性を示す重要な実証。実用化までの距離は長い（音圧、オゾン、電圧）が、**「ドライバーを物理的に近接配置できないという制約から自由になれる」** という設計空間の解放が本質的に新しい。EPFL Lissekは長年プラズマ／ロボティック音響メタマテリアルを追っているチームで、本研究はその文脈の延長として位置づくべき。次に読むなら同チームの非相反メタマテリアル論文。

## Mentioned in

```dataview
TABLE WITHOUT ID file.link AS "Date", theme
FROM "reports"
WHERE contains(file.outlinks, this.file.link) OR contains(string(tags), "CDT") OR contains(string(tags), "コロナ放電")
SORT file.name DESC
```
