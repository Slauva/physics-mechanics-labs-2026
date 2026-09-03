---
name: physics-tikz-figures
description: Design, integrate, compile, and correct TikZ/PGF mechanics diagrams for this repository, including apparatus, forces, trajectories, coordinate systems, plots, and explanatory schematics. Use when a requested visual should remain vector and LaTeX-native; do not use for photographs, scans, or artwork better represented by a raster image.
---

# Physics TikZ figures

Create scientifically unambiguous vector figures that remain readable in both the document and presentation layouts.

## Prepare

1. Read the surrounding paragraph, intended physical claim, target width, and the material's `PLAN.md`.
2. Write a short figure contract: objects, coordinate system, states, labels, forces or measured quantities, scale intent, and what must not be inferred literally.
3. Read [references/figure-conventions.md](references/figure-conventions.md) before implementing or reviewing the figure.

If the physical meaning, direction convention, or measured quantity is ambiguous, leave the figure stage open and ask for clarification rather than choosing silently.

## Implement

- Store reusable content-only drawings as `figures/<descriptive-name>.tikz` and include them with `\input` inside a `figure`, `column`, or `\resizebox` at the call site.
- Use the shared `physics line`, `physics accent`, `physics force`, `physics dimension`, and `physics label` styles where their semantics fit.
- Prefer coordinates, named nodes, relative positioning, loops, and scoped transformations over repeated magic coordinates.
- Encode physical distinctions with geometry, arrowheads, line style, and labels as well as color.
- Use true axis directions and consistent sign conventions. Mark schematic/not-to-scale drawings when proportions could mislead.
- Keep text as LaTeX text and quantities through `siunitx`; do not bake labels into raster assets.
- Write all labels, annotations, legends, and not-to-scale notices in English.

## Verify

1. Compile the smallest actual entry point that uses the figure.
2. Inspect the rendered figure at final size for clipped arrowheads, label collisions, weak contrast, line-weight imbalance, and unreadable symbols.
3. Verify scientific semantics: force origins and directions, coordinate handedness, angle arcs, attachment points, trajectory direction, and stated equilibrium positions.
4. Also inspect the student build when solution-only overlays or annotations exist.

Iterate inside the current workflow stage. Append the figure contract, changed file, build command, and review result to `WORKLOG.md`; do not mark the stage approved on the user's behalf.
