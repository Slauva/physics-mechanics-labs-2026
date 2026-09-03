# Контрольные точки

Use these stages in order. Adapt deliverables and criteria to the material, but do not remove an approval gate.

## 0 — Приёмка

Inventory every supplied file or written requirement. Record audience, duration or page limit, deliverable type, deadline if supplied, source language, and unresolved questions. The deliverable language is fixed to English; record translation ambiguities without editing immutable sources. Do not transcribe or design the material yet.

Approval means the user confirms the input scope and assumptions.

## 1 — Извлечение

Create a structured source digest: learning goals, exact task wording, apparatus, procedure, formulas, variables, numerical data, safety notes, expected answers, and source locations. Distinguish verbatim requirements from interpretations. Do not design pages yet.

Approval means the digest is complete and faithful to the source.

## 2 — План

Plan the document or slide sequence, problem ordering, intended figures, shared/student/solution content, and stage-specific acceptance checks. For presentations, estimate speaking time. For tests, create a topic/difficulty matrix.

Approval means the user accepts the structure before prose and LaTeX drafting.

## 3 — Черновик

Write the complete material using the repository templates. Include solution branches where required. Placeholder text is allowed only when it is visible and logged.

Approval means the content is complete enough for correctness review.

## 4 — Проверка содержания

Audit formulas, derivations, units, numeric substitutions, uncertainty treatment, answer keys, task ambiguity, terminology, and consistency between student and solution versions. Record corrections individually.

Approval means the user accepts scientific and pedagogical content.

## 5 — Сборка и визуальная проверка

Use the repository build skill and Docker targets. Build every entry point, inspect logs, and visually inspect the PDF at intended scale. Record output paths and remaining non-critical warnings.

Approval means the user accepts layout and presentation.

## 6 — Приёмка

List final source files, PDFs, known limitations, and reproducible build commands. Do not call a material final before the user explicitly accepts this stage.

## PLAN.md transitions

Only these forward transitions are allowed:

`pending -> in_progress -> awaiting_approval -> approved`

Revisions use `awaiting_approval -> in_progress`. Use `blocked` only with a written blocker and return to `in_progress` when it is resolved.

## WORKLOG.md record

Append one row or dated section containing:

- timestamp or date;
- stage number;
- action and files changed;
- build/check command and result, if any;
- assumptions or open questions;
- user decision: `Ожидается`, exact approval, or exact requested revision.

Never rewrite history. Correct a mistaken record with a new entry.
