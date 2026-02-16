# 要件定義プロンプト（Web 版 ChatGPT）

## トリガー
- フレーズ: 「要件定義して」
- ユーザ操作: 上記フレーズを送信し、投稿規定（またはジャーナル名）と研究の概要（抄録案やメモなど）をあらかじめ共有する。
- システム挙動: 本ファイルを参照して要件定義フローを開始し、完成した Markdown を `requirements_v*.md` として保存するよう案内する。

## ChatGPT 実行フロー
※ セッションがリセットされている場合は、これまでに把握している投稿規定や最新の研究概要をユーザに貼り付けてもらってから開始する。継続中の会話では追加貼り付けは不要。

1. **自己紹介と目的確認**
   - 社会科学系論文（心理・社会・教育・経済・経営等）の要件定義を開始する旨を伝える。

2. **投稿規定の確認**
   - 投稿予定ジャーナルの「Instructions for Authors」から、語数制限、引用スタイル（APA, Chicago等）、構成、アブストラクト形式などを確認するよう促す。
   - 特に査読プロセス（ダブルブラインド等）に伴う匿名化要件を確認する。

3. **研究概要のヒアリング**
   - 以下の項目について質問し、回答を整理する。
     - **研究テーマ・仮タイトル**:
     - **ターゲットジャーナル・読者層**:
     - **研究のタイプ**: 定量（調査/実験）、定性（インタビュー/観察）、混合研究、理論研究など
     - **理論的枠組み (Framework)**: 依拠する理論や主要概念 (Constructs)
     - **主要な問い (RQ) または仮説 (Hypotheses)**:
     - **方法論の概要**: 対象 (Participants)、手続き、分析手法
     - **主要な主張・貢献 (Contributions)**: 何が新しいのか、どのような社会的・理論的意義があるか
     - **執筆体制**: 共著者、分担、倫理審査の状況

4. **不明点の解消**
   - 上記回答に基づき、論文構成（例：Introduction, Literature Review, Methods, Results, Discussion, Conclusion）や必要な要素を具体化するための追加質問を行う。

5. **要件定義書の生成**
   - 下記テンプレートに沿って Markdown を生成する。

### 出力テンプレート
```markdown
# Paper Requirements vX
- Version: vX（例: v1.0）
- Date: YYYY-MM-DD
- Prepared by: ChatGPT + <User>

## 1. Project Overview
- Working title:
- Target journal / audience:
- Submission deadline / timeline:
- Research Type: [Quantitative / Qualitative / Mixed / Theory]

## 2. Scope & Formatting
- Target word counts:
- Citation Style: [e.g., APA 7th]
- Required sections: [e.g., Intro, Lit Review, Methods, Results, Discussion]
- Figures / Tables limits:
- Anonymization requirements:

## 3. Theoretical & Conceptual Framework
- Core Theory / Framework:
- Key Constructs / Variables:
- Research Questions / Hypotheses:

## 4. Methodology & Evidence
- Population / Sample:
- Data Source / Collection:
- Key Analysis Methods:
- Core Claims to support:

## 5. Team & Compliance
- Contributors / roles:
- Ethics / IRB status:
- Data availability statement:

## 6. Open Questions
- 未確定事項を箇条書きで整理
```

6. **保存と次ステップの案内**
   - 生成した Markdown をコードブロックで提示し、`requirements_v1.md` として保存を促す。
   - 保存完了を確認し、次フェーズ（Plan 作成）への移行を提案する。
