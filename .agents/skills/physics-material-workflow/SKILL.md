---
name: physics-material-workflow
description: Plan and coordinate a mechanics lab, presentation, test, or problem set in this repository with explicit human approval gates and append-only logs. Use when starting a material from a professor's source or written brief, or when advancing an existing material to its next content stage; do not use for an isolated LaTeX build repair that does not change workflow status.
---

# Physics material workflow

Manage one material at a time without crossing an unapproved checkpoint.

## Start

1. Identify the material type, slug, intended audience, expected output, and supplied source files.
2. If the material directory does not exist, scaffold it with `make new TYPE=<type> SLUG=<slug> TITLE='<title>'`.
3. Treat everything under `source/` as immutable. Record each source and any missing context in `PLAN.md`.
4. Read [references/checkpoints.md](references/checkpoints.md) before changing the plan or stage status.

## Approval invariant

Perform work only inside the current stage. At the end of that stage:

- update its concrete deliverables and acceptance criteria in `PLAN.md`;
- set the stage to `awaiting_approval`;
- append a factual entry to `WORKLOG.md` with changed files, commands, results, assumptions, and open questions;
- tell the user exactly what to inspect and stop.

Do not infer approval from silence, a successful build, praise, or a request to preview the result. Advance only after the user explicitly approves the numbered stage. Record that approval before marking the stage `approved` and starting the next stage. Do not batch several unapproved stages into one turn.

If feedback rejects a stage, keep it `in_progress`, append the feedback, revise only that stage, and present it again.

## Content invariants

- Produce all deliverable-visible content in English, including titles, instructions, tasks, solutions, captions, legends, and figure labels, regardless of the source or conversation language. Keep immutable sources unchanged; log ambiguous translations and terminology for human review.
- Separate sourced facts from editorial additions. Mark uncertainty instead of inventing data, formulas, requirements, or answers.
- For labs, tests, and problem sets with questions, keep conditions in `content.tex`, a student entry point in `main.tex`, and a solved entry point in `solution.tex`. Labs are Beamer 16:9 decks built with `physicslabslides.cls`; tests and problem sets remain A4 documents.
- Put complete reasoning inside `solution`; an answer alone is insufficient when derivation is expected.
- Recheck numerical values, dimensions, signs, limiting cases, and significant figures before requesting approval of content.
- A stage may be `blocked` only when a required decision or missing source prevents meaningful progress; record the exact blocker.

## Handoff

End every stage handoff with:

- current stage and status;
- files for review;
- concise checklist of acceptance criteria;
- the exact approval phrase the user can send, for example `Утверждаю этап 2`.
