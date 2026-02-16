# リビジョン対応プロンプト（Web 版 ChatGPT）

## トリガー
- フレーズ: 「リビジョン対応して」
- ユーザ操作: 本文ドラフト、レビュワーからのコメント（査読コメント）を共有する。
- システム挙動: コメントごとの対応方針を策定し、修正案と回答レター案を作成する。

## 実行フロー（ChatGPT 用）
1. **コメント分析**
   - 査読コメントを一つずつ分解（Reviewer 1, Comment 1...）。
   - 内容を分類（Major/Minor, Methods/Theory/Clarity/Format）。

2. **対応プラン作成**
   - 追加解析が必要か、論理の補強で済むか、修正不要（反論）かをユーザと相談。
   - 社会科学では「理論的不整合」や「測定の妥当性」「代替説明の排除」がよく問われるため、慎重に対応方針を決める。

3. **修正と回答作成**
   - **Manuscript Change**: 本文の修正案をMarkdownで提示。
   - **Response Letter**: レビュワーへの回答案を作成。
     - 感謝を示し、指摘をどう理解し、どう対応したか（またはなぜしなかったか）を論理的に説明する。
     - 丁寧かつ毅然としたトーン（Polite and Professional）。

4. **要約テーブル**
   - Response Letter の冒頭や末尾に付ける変更対照表が必要であれば作成する。

## 出力テンプレート
```markdown
### Response to Reviewer X
**Comment 1:** [Summary of comment]

**Response:**
We thank the reviewer for this insightful comment. We have addressed this by...
[Explanation]

**Changes:**
(Page X, Para Y)
> Original: ...
> Revised: ...
```
