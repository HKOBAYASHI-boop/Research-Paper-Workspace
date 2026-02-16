# ANTIGRAVITY.md: Research Paper Workspace Constitution

## 1. Project Identity
- **Name**: Research Paper Workspace
- **Purpose**: To provide a streamlined, AI-assisted environment for writing high-quality research papers.
- **Goal**: Integrate NotebookLM and local tools to efficiently manage references, generate drafts, and polish academic writing.

## 2. Technology Stack & Tools
- **Core**: Markdown (for writing), Git/GitHub (for version control).
- **AI Assist**:
    - **NotebookLM**: For finding sources, summarizing/synthesizing literature (`notebooklm-mcp-cli`).
    - **Antigravity (Me)**: For drafting, reviewing, and prompt engineering.
- **Environment**: Windows, VS Code (implied).

## 3. Workflow Principles (The "Vibe")
- **Source-First**: Always base writing on verified sources (managed in NotebookLM or local `references/`).
- **Iterative Drafting**: Start with outlines, then sections, then polish. Use Git to track evolution.
- **Automated Support**: Use CLI tools to fetch summaries or audio overviews for "listening" to papers.

## 4. Directory Structure (Proposed)
- `/drafts`: Markdown files for sections (Introduction, Methods, etc.).
- `/references`: PDFs or raw text materials (if not online).
- `/output`: Generated artifacts (PDFs, Audio, Slides).
- `/prompts`: Custom system prompts for academic writing.

## 5. Current Status
- **Phase**: Initialization (Step 0)
- **Next**: Set up Git repository and connect to GitHub.
