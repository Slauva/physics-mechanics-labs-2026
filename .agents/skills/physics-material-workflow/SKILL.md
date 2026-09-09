---
name: physics-material-workflow
description: Plan and coordinate a mechanics lab, presentation, test, or problem set in this repository with explicit human approval gates and append-only logs. Use when starting a material from a professor's source or written brief, or when advancing an existing material to its next content stage; do not use for an isolated LaTeX build repair that does not change workflow status.
---

# Physics material workflow

Coordinate the requested material without crossing an unapproved checkpoint. Repository setup and isolated technical repairs do not start a material workflow; use the existing stage without resetting it.

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
- tell the user exactly what to inspect and stop at this checkpoint unless the user has already explicitly authorized the transition;
- if this gate requires a question, link this skill, quote the applicable rule, and explain which decision is missing.

Do not infer approval from silence, a successful build, praise, or a request to preview the result. Accept an explicit stage approval or an unambiguous instruction to proceed, such as `переходи к черновику`, when the material and transition are clear. A numbered phrase is an example, not required syntax. Record the actual user instruction before marking the stage `approved` and starting the next stage; do not ask again for approval already given. Do not batch several unapproved stages into one turn.

If feedback rejects a stage, keep it `in_progress`, append the feedback, revise only that stage, and present it again.

## Content invariants

- Produce all deliverable-visible content in English, including titles, instructions, tasks, solutions, captions, legends, and figure labels, regardless of the source or conversation language. Keep immutable sources unchanged; log ambiguous translations and terminology for human review.
- Separate sourced facts from editorial additions. Mark uncertainty instead of inventing data, formulas, requirements, or answers.
- For labs, tests, and problem sets with questions, keep conditions in `content.tex`, a student entry point in `main.tex`, and a solved entry point in `solution.tex`. Labs are Beamer 16:9 decks built with `physicslabslides.cls`; tests and problem sets remain A4 documents.
- Put complete reasoning inside `solution`; an answer alone is insufficient when derivation is expected.
- For scientific review, use `physics-content-review`; recheck numerical values, dimensions, signs, limiting cases, and significant figures before requesting approval of content. A delegated read-only reviewer returns findings to the main agent, which owns the plan and log.
- A stage may be `blocked` only when a required decision or missing source prevents meaningful progress; record the exact blocker.

## Handoff

End every stage handoff with:

- current stage and status;
- files for review;
- concise checklist of acceptance criteria;
- an example approval phrase, such as `Утверждаю этап 2`; equivalent clear wording is also valid.
