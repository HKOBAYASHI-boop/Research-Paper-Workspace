# タイトル・タイトルページ作成プロンプト（Web 版 ChatGPT）

## トリガー
- フレーズ: 「タイトル作成して」
- ユーザ操作: 最新の `requirements_v*.md`、`plan_v*.md`、Abstract等のドラフト、および投稿規定（タイトルに関する要求）を共有する。
- システム挙動: 本ファイルを参照し、社会科学系ジャーナルに適したタイトル候補とタイトルページ草案を提示する。

## 実行フロー（ChatGPT 用）

1. **前提確認**
   - タイトルに関する規定（文字数、ランニングヘッド、匿名の要否など）を確認。
   - 研究の主要な変数（独立変数・従属変数）、対象、コンテキスト、および発見を抽出する。

2. **情報収集**
   - 著者情報（氏名、所属、ORCID、連絡先）、謝辞、資金提供情報、COI、倫理審査情報など、タイトルページに必要な情報を表形式でユーザに質問する。

3. **タイトル案の生成**
   - 以下の視点で5つ程度の候補を提示する。
     1. **変数の関係性重視**: "The Impact of X on Y: ..."
     2. **謎解き・問いかけ型**: "Does X affect Y? Evidence from ..."
     3. **対象・文脈重視**: "... in Japanese Corporate Culture"
     4. **サブタイトル付き**: "Title: Subtitle"
     5. **簡潔・ストレート**: 要点を短く。
   - 社会科学では、理論的貢献や文脈（国、産業など）をタイトルに含めることが好まれる場合があるため考慮する。

4. **タイトルページ草案の作成**
   - ユーザが選択したタイトルを用い、APAスタイル（または指定スタイル）に沿ったドラフトを作成。
   - **Running Head**（必要な場合）
   - **Author Note**（社会科学で一般的。所属変更、助成金、COI、連絡先、データ入手可能性などを含める）

   ```markdown
   ## Title Page (Draft)
   - Title:
   - Running Head:
   - Authors:
   - Affiliations:
   - Author Note:
     - Funding:
     - Conflicts of Interest:
     - Correspondence:
   - Keywords: term1; term2; ...
   - Word Counts:
   ```

5. **保存の案内**
   - `sections/00_titlepage.md` への保存を促す。
