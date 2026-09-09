---
name: physics-latex-authoring
description: Author, compile, review, and repair XeLaTeX mechanics materials in this repository using its shared class, Beamer theme, and repository Docker build. Use for LaTeX drafting, build failures, layout warnings, student/solution variants, or PDF quality checks; do not use to approve or silently advance a material's content stage.
---

# Physics LaTeX authoring

Produce reproducible PDFs without editing generated artifacts or immutable professor sources.

## Establish scope

1. Locate the material entry point and read its `PLAN.md` and `WORKLOG.md` when present.
2. Work within the authorized scope and current workflow stage. An isolated technical fix preserves stage status and needs no new content approval. Compilation and visual checks can support the current stage before the formal layout checkpoint.
3. Read [references/repository-latex.md](references/repository-latex.md) before choosing file layout, build commands, or debugging steps.

## Authoring

- Reuse `physicslabslides.cls` for lab decks, `physicslab.cls` for print materials, `physicslab-common.sty`, and `beamerthemePhysicsLab.sty`; change shared style only when the requirement genuinely applies project-wide.
- Keep document-specific prose and structure in its own directory. Keep reusable style in `tex/`.
- Use semantic LaTeX: structural environments, `mathtools` for equations, and `siunitx` for values and units.
- Avoid manual spacing as layout architecture. Prefer line breaks, columns, boxes, and proper page/slide decomposition.
- Preserve source meaning, numerical data, and conditions when translating. Preserve English source wording unless revision is requested. Do not repair scientific ambiguity silently; log it for review.
- Write every string that can appear in a PDF in English, including document metadata, navigation labels, captions, answer keys, and imported TikZ labels. Translate source wording faithfully and log uncertain terminology.
- For labs, tests, and problem sets, ensure `main.tex` uses `nosolutions`, `solution.tex` uses `solutions`, and both input the same `content.tex`.
- Author labs as projector-readable Beamer 16:9 slide sequences. Put complete worked answers on conditional `solutionframe` slides instead of shrinking them into the task slide.

## Compile and repair

1. Run `make lint` before the final build.
2. Build the exact entry point with `make build FILE=<path>`; never invoke a host TeX installation.
3. On failure, identify the first causal error in the generated log, make the smallest source fix, and rebuild the same entry point.
4. After it succeeds, inspect warnings for missing references, overfull boxes, font substitution, missing glyphs, and unavailable images.
5. Build both student and solution entry points when shared content or the class changes.
6. Visually inspect the PDF at its intended page or projector size. Treat clipping, overlap, unreadably small text, unintended Cyrillic, missing glyphs, misleading diagrams, and blank pages as failures even if LaTeX exits successfully.

Write build products, page renders, extracted text, and temporary QA files under `output/`. Never patch a generated artifact in place as a substitute for correcting and rebuilding its source.

## Report and log

Append the source changes, exact build commands, PDF paths, errors fixed, unresolved warnings, and visual-review result to the material's `WORKLOG.md`; log repository-wide maintenance in `docs/SETUP_LOG.md`. A delegated read-only reviewer returns this evidence to the main agent instead of editing logs.

Preserve the current workflow status for technical fixes. Only a completed stage handoff through `physics-material-workflow` sets `awaiting_approval`. Report checks that were unavailable instead of claiming success.
