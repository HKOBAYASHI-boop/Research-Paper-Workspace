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
- `.antigravity/`: System prompts and rules.

## 4. AI & Tool Stack
- **NotebookLM**: For literature review and synthesis (`nlm` CLI).
- **Pandoc**: For final output generation (configured in `.antigravity`).
- **Git**: For version control of drafts.

## 5. Trigger Phrases (Prompt Shortcuts)
- "要件定義して" → `requirements_prompt.md`
- "プラン作って" → `plan_prompt.md`
- "イントロ作成して" → `introduction_prompt.md`
- "メソッド作成して" → `methods_prompt.md`

