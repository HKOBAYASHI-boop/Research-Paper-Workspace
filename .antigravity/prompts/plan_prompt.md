# Plan 作成プロンプト（Web 版 ChatGPT）

## トリガー
- フレーズ: 「プラン作って」
- ユーザ操作: 最新の要件定義ファイル (`requirements_v*.md`) と既存 Plan があれば共有する。
- システム挙動: 本ファイルを参照して章構成と主要ポイントを整理し、完成した Markdown を `plan_v*.md` として保存するよう案内する。

## ChatGPT 実行フロー
※ セッションがリセットされている場合は、最新版の要件情報や既存 Plan をユーザに貼り付けてもらってから開始する。

1. **前提確認**
   - `requirements_v*.md` を参照し、研究タイプ（定量/定性/混合）や語数制限、理論枠組みを確認する。

2. **構成の決定と文献整理**
   - 社会科学論文の標準的構成（Intrduction, Literature Review, Methods, Results, Discussion, Conclusion）を基本とし、ジャーナル規定に合わせて調整する。
   - 各セクションで扱うべき「主張」と、それを支える「文献（引用）」または「データ（結果）」を整理する。文献不足の論点があれば指摘する。

3. **プラン詳細の作成**
   - 下記テンプレートに沿って、各章の目的、主要な論点、引用候補、担当者などを記述する。
   - 特に「Literature Review」の構成（年代順か、テーマ別か、理論仮説ごとか）を明確にする。

4. **出力テンプレート**
```markdown
# Paper Plan vX
- Based on: requirements_vY.md
- Date: YYYY-MM-DD
- Prepared by: ChatGPT + <User>

## 0. Overview
- Objective summary (3 sentences):
- Target word count allocation:
- Pending tasks:

## 1. Section Blueprint
| セクション        | 目的・構成                 | 主要ポイント・理論的根拠                       | 必要データ/引用    | 担当 |
| ----------------- | -------------------------- | ---------------------------------------------- | ------------------ | ---- |
| Abstract          | ...                        | ...                                            | ...                | ...  |
| Introduction      | 問題提起とリサーチギャップ | ...                                            | ...                | ...  |
| Literature Review | 既存研究の整理と仮説導出   | [Theme A], [Theme B], [Hypothesis Development] | {Author Year}, ... | ...  |
| Methods           | 研究デザインと手続き       | Sample, Measures, Procedure, Analysis          | ...                | ...  |
| Results           | 分析結果の報告             | [Key Finding 1], [Key Finding 2]               | Table 1, Fig 1     | ...  |
| Discussion        | 解釈、含意、限界           | Theoretical Imp., Practical Imp., Limitations  | ...                | ...  |
| Conclusion        | 総括                       | ...                                            | ...                | ...  |

> `主要ポイント` には論理の流れを記述し、`必要データ/引用` には `{著者名 雑誌名 年度}` 形式のプレースホルダーや、使用する図表番号を記載する。

## 2. Figures & Tables List
- Table 1: [Title] - [Source/Status]
- Figure 1: [Title] - [Source/Status]

## 3. Risks & Open Questions
- 未解決の論点、追加解析の要否など

## 4. Next Actions
- 次のステップ（例：Literature Reviewの執筆、表1の作成）
```

5. **出力後の指示**
   - Markdown をコードブロックで提示し、`plan_v1.md` として保存を促す。
   - 次に「セクション下書きして」などのプロンプトへ進むよう提案する。
