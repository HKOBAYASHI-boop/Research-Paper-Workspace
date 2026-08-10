# Contributing to Research Paper Workspace

**[English Follows Japanese]**

Research Paper Workspace への貢献をご検討いただきありがとうございます！
本プロジェクトは、AIを活用した学術論文執筆（Vibe Writing）を安全かつ高品質に行うための環境です。

## 貢献のガイドライン

プルリクエスト（PR）を送信する際は、以下のルールに従ってください。

1. **Source-First 原則の遵守**:
   AIスキルの追加やプロンプトの修正を行う場合、AIのハルシネーション（幻覚）を助長しないよう、「必ず参照元（`refs/`）に基づき出力する」ようプロンプトを設計してください。
2. **フェーズゲート（Phase Gates）の維持**:
   `scripts/` 内の検証スクリプト（`design_gatekeeper.py`等）の無効化やバイパスは行わないでください。ゲートキーパーのロジックを修正する場合は、その理由とテスト結果をPRに明記してください。
3. **新しいAIスキルの追加**:
   `skills/` ディレクトリに新しいAIの挙動（スキル）を追加する場合は、`SKILL.md` のフォーマットに従い、実行するためのトリガーフレーズを記述してください。

## 開発フロー
- Issueでバグ報告や機能提案（新しいAIスキルなど）を作成する。
- フォークして新しいブランチを作成する（例: `feature/add-new-skill`）。
- 変更を加え、必要に応じてテストを行う。
- プルリクエストを送信する。

---

# Contributing to Research Paper Workspace

Thank you for considering contributing to the Research Paper Workspace!
This project aims to provide a safe and high-quality environment for AI-assisted academic writing (Vibe Writing).

## Contribution Guidelines

When submitting a Pull Request (PR), please follow these rules:

1. **Adhere to the Source-First Principle**:
   When adding AI skills or modifying prompts, ensure the prompts are designed to output *only* based on references (in `refs/`) to prevent AI hallucinations.
2. **Maintain Phase Gates**:
   Do not disable or bypass the validation scripts in `scripts/` (e.g., `design_gatekeeper.py`). If you are modifying the gatekeeper logic, clearly state the reason and provide test results in your PR.
3. **Adding New AI Skills**:
   When adding a new AI behavior (skill) to the `skills/` directory, follow the existing `SKILL.md` format and specify the trigger phrase used to execute it.

## Development Flow
- Create an Issue to report a bug or propose a feature (like a new AI skill).
- Fork the repository and create a new branch (e.g., `feature/add-new-skill`).
- Make your changes and test them as necessary.
- Submit a Pull Request.
