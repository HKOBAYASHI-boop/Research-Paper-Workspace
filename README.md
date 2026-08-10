# Research Paper Workspace 📝🤖

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
*(Note: License badge is a placeholder. Please ensure a LICENSE file is added.)*

**[English Follows Japanese]**

Research Paper Workspace は、AIエージェント（Codex / Antigravity）とバージョン管理（Git）を統合し、社会科学および医学分野における高品質な学術論文執筆を効率化するためのAI支援型執筆環境（Vibe Writing Workspace）です。

## ✨ 主な特徴

- **AIエージェント連携 (Skill-Based Architecture)**: カスタム定義されたAIスキル（`skills/`）により、要件定義から各セクションの執筆、引用の正規化までをAIが強力に支援します。
- **フェーズゲート検証 (Phase Gates)**: 論文の品質を担保するため、要件定義や執筆計画がシステム的に承認（PASS）されないと本文執筆に進めない厳密なゲートキーパー機構（`design_gatekeeper.py` 等）を備えています。
- **Source-First 原則**: ハルシネーションを防ぐため、すべての記述は `refs/` に格納された文献や NotebookLM などの検証可能なソースに基づくことをルール化しています。
- **スナップショットとドラフト管理**: 付属のPowerShellスクリプトにより、執筆途中のスナップショット保存やブランチの切り替えを簡単に行い、執筆プロセスの再現性を確保します。

## 📁 ディレクトリ構成

```text
Research-Paper-Workspace/
├── .antigravity/       # AIエージェント用のシステムプロンプト
├── AGENTS.md           # プロジェクト全体のAI挙動・文体ルール
├── ANTIGRAVITY.md      # プロジェクト憲法（Vibe Writing原則）
├── design/             # 要件定義（01_requirements.md）と計画（02_plan.md）
├── refs/               # 参考文献データベース・文献ファイル
├── scripts/            # ゲートキーパー（Python）と補助スクリプト（PowerShell）
├── sections/           # 論文の各セクションのドラフト（IMRAD形式）
└── skills/             # 各種自動化タスク用のカスタムAIスキル
```

## 🚀 使い方

本ワークスペースは、**「設計（Design）→ 執筆（Drafting）→ 検証（QA）」** の反復的なイテレーションを前提としています。

1. **要件定義**: AIに「要件定義スキルを実行して」と指示し、`design/01_requirements.md` を作成・承認します。
2. **執筆計画**: 「プラン作成スキルを実行して」と指示し、`design/02_plan.md` を完成させます。
3. **フェーズゲート検証**: バックグラウンドでPythonスクリプトが実行され、要件と計画が揃っているか（PASS）を確認します。
4. **セクション執筆**: 「イントロ執筆スキルを実行して」など、トリガーフレーズを用いて `sections/` 配下の各ファイルをAIと協働して執筆します。

---

# English Description

Research Paper Workspace is an AI-assisted writing environment (Vibe Writing Workspace) that integrates AI agents (Codex / Antigravity) with version control (Git) to streamline the process of writing high-quality academic papers in the social sciences and medical fields.

## ✨ Key Features

- **AI Agent Integration**: Custom-defined AI skills (in `skills/`) automate and assist with everything from requirements definition to drafting sections and normalizing citations.
- **Phase Gates**: To ensure paper quality, strict gatekeeper mechanisms (e.g., `design_gatekeeper.py`) block the drafting phase until the requirements and plans are systematically validated (PASS).
- **Source-First Principle**: To prevent AI hallucinations, all claims must be strictly grounded in verifiable sources stored in `refs/` or via tools like NotebookLM.
- **Snapshot & Draft Management**: Included PowerShell scripts allow users to easily save snapshots and manage draft branches, ensuring a reproducible writing process.

## 📁 Directory Structure

- `AGENTS.md` / `ANTIGRAVITY.md`: Global rules, tone guidelines, and AI system instructions.
- `design/`: Stores requirements (`01_requirements.md`) and execution plans (`02_plan.md`).
- `sections/`: Contains the actual manuscript drafts organized by IMRAD sections.
- `skills/`: Custom AI skills tailored for specific academic writing tasks.
- `scripts/`: Validation Python scripts and Git utility PowerShell scripts.

## 🚀 Getting Started

This workspace relies on an iterative **Design → Drafting → QA** workflow.

1. **Requirements**: Trigger the AI (e.g., "Run requirements definition skill") to generate and approve `design/01_requirements.md`.
2. **Planning**: Trigger the AI to finalize the execution plan in `design/02_plan.md`.
3. **Phase Gates**: Background Python scripts will validate that the design phase is fully complete (PASS) before proceeding.
4. **Drafting Sections**: Use specific trigger phrases (e.g., "Run introduction writing skill") to collaboratively draft the manuscript in the `sections/` directory.
