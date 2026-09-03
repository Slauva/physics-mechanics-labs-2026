# Repository LaTeX conventions

## Entry points

| Material | Student/audience PDF | Solved PDF | Shared body |
|---|---|---|---|
| Lab (Beamer 16:9, `physicslabslides.cls`) | `main.tex` | `solution.tex` | `content.tex` |
| Test | `main.tex` | `solution.tex` | `content.tex` |
| Problem set | `main.tex` | `solution.tex` | `content.tex` |
| Presentation | `main.tex` | — | `main.tex` |

For lab decks, use `solutionframe` for a complete worked-answer slide, `solution` for a conditional block inside an existing slide, `\answer{...}` for a concise final answer, and `\teacheronly{...}` for teaching notes. Conditional solution content disappears from a `nosolutions` build.

## Output language

All text rendered into a deliverable must be English. This includes PDF metadata,
headings, body text, problem statements, worked solutions, table headings, captions,
legends, and TikZ labels. Project logs and immutable professor sources may use other
languages. Use the English `siunitx` locale and decimal point.

## Build contract

The root `Makefile` mounts the repository at `/work`, uses XeLaTeX through `latexmk`, and puts results in `output/<source-path>/`.

```bash
make lint
make build FILE=materials/labs/example/main.tex
make build FILE=materials/labs/example/solution.tex
```

For shared-style smoke tests:

```bash
make demo
```

Read `output/<source-path>/<entrypoint>.log` from the first error onward. Later errors are often cascades.

## Repair order

1. Missing file, invalid command, runaway argument, or unmatched environment.
2. Font or glyph failure.
3. Undefined reference or citation after the necessary reruns.
4. Overfull/underfull boxes and slide overflow.
5. Cosmetic warnings.

Do not hide a real error by removing `-halt-on-error` or changing the pinned image. If a package is unavailable, first prefer an equivalent already provided by the image and shared style.

## Visual review

Render representative pages to images when a PDF viewer is unavailable. Inspect at least:

- title page or title slide;
- the densest page/slide;
- every page with a new TikZ figure or table;
- one solution page;
- first and last page for headers, footers, and accidental blanks.

For presentations, verify 16:9 bounds and projector legibility. For print documents, verify A4 margins and grayscale distinction.
