# ANTIGRAVITY.md: Research Paper Workspace Constitution

## 1. Project Identity
- **Name**: Research Paper Workspace
- **Purpose**: To provide a streamlined, AI-assisted environment for writing high-quality social science research papers.
- **Reference**: Based on `SocialSciencePaperProject` (Vibe Writing).

## 2. Vibe Writing Principles (Social Science)
1.  **Source-First**: All claims must be supported by `refs/` or NotebookLM sources. No hallucination.
2.  **Iterative Workflow**:
    - **Drafting**: Use `design/` for planning. Write "Vibes" (rough ideas) first.
    - **Refining**: Polish strictly according to APA style.
3.  **Strict APA Style**:
    - **Clarity**: Simple sentences, precise terms.
    - **Tone**: Neutral, professional, construct-sensitive.
    - **Active Voice**: Preferred over passive voice where possible.

## 3. Directory Structure
- `design/`: Requirements (`01_requirements.md`) and Plans (`02_plan.md`).
- `sections/`: Drafts for each paper section (Intro, Methods, etc.).
- `refs/`: Reference materials and `.bib` files.
- `skills/`: [NEW] Action-specific instructions and rules for the AI.
- `scripts/`: [NEW] Python validation scripts and Git utilities.

## 4. AI & Tool Stack
- **NotebookLM**: For literature review and synthesis (`nlm` CLI).
- **Pandoc**: For final output generation.
- **Git**: For version control of drafts.
- **Python Setup**: Used for running Phase Gates (Gatekeeper Scripts).

## 5. Phase Gates & Skills (Automated Workflow)
This project uses a **Skill-Based Architecture**. AI actions are governed by `AGENTS.md` and specific `skills/`.
- **Requirements Gate**: Writing cannot start until `design/01_requirements.md` passes validation (`python scripts/design_gatekeeper.py --stage requirements`).
- **Plan Gate**: Writing cannot start until `design/02_plan.md` passes validation.

### Key Skills (Trigger Phrases)
Instead of asking "write an introduction", trigger the specific skill:
- "要件定義スキルを実行して" → Runs `$paper-requirements`
- "プラン作成スキルを実行して" → Runs `$paper-plan`
- "イントロ執筆スキルを実行して" → Runs `$paper-write-introduction` (Will be blocked if gates fail)
- "メソッド執筆スキルを実行して" → Runs `$paper-write-methods`

