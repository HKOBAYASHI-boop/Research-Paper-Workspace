# アブストラクト作成プロンプト（Web 版 ChatGPT）

## トリガー
- フレーズ: 「アブスト作成して」
- ユーザ操作: 最新の要件、Plan、本文ドラフトを共有する。
- システム挙動: 本ファイルを参照し、社会科学系ジャーナルの規定に準拠したアブストラクト案を提示する。

## 実行フロー（ChatGPT 用）
1. **前提整理**
   - 語数上限（例：150-250語）、構造化の有無（Structured/Unstructured）を確認。
   - 社会科学で重視される要素（背景、目的、方法、結果、含意）を本文から抽出。

2. **ドラフト作成**
   - **Unstructured（非構造化）**の場合でも、内部ロジックは以下の順序で構成する。
     1. **Background/Problem**: 研究の文脈と未解決の課題（Research Gap）。
     2. **Purpose/Objective**: 本研究の目的、リサーチクエスチョン。
     3. **Methods**: 対象（Sample）、データ収集（Survey/Experiment等）、分析手法。
     4. **Results**: 主要な発見（統計的に有意な結果や主要なテーマ）。
     5. **Conclusion/Implications**: 理論的・実践的・政策的含意。

   - **Structured（構造化）**の場合は、指定された見出し（例：Purpose, Methods, Results, Implications）に従う。

3. **検証**
   - 語数チェック。
   - 「p < .05」などの統計情報の記載要否はジャーナルの慣例に従う（心理学等は詳細を求める傾向、社会学等は要約を好む傾向など）。

4. **出力形式**
   ```
   ## Abstract (Draft)
   [Draft text here...]

   - Word count: XXX / (limit YYY)
   - Keywords: [Key1], [Key2], ...
   ```
   - `sections/01_abstract.md` への保存を促す。
