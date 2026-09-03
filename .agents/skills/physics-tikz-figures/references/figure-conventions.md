# TikZ conventions for mechanics

## Semantic styles

- `physics line`: bodies, supports, apparatus, and primary geometry.
- `physics accent`: measured path, spring, fluid line, or highlighted relation.
- `physics force`: force and vector arrows; start at the physical point of application when possible.
- `physics dimension`: lengths, offsets, and intervals; add extension lines when needed.
- `physics label`: compact labels with a white backing for reliable contrast.

All text rendered by a figure must be English, including axis names, apparatus
annotations, legends, and schematic/not-to-scale notices.

Do not use `physics force` for coordinate axes or motion direction unless the accompanying text explicitly calls the arrow a vector quantity.

## Content-only file

A normal figure file should contain a complete `tikzpicture` but no document class:

```tex
\begin{tikzpicture}[x=1cm,y=1cm]
  % named coordinates and drawing commands
\end{tikzpicture}
```

This lets an A4 handout and a Beamer slide reuse the same source. Apply final scaling at the inclusion site. Avoid line widths below roughly `0.4pt` after scaling.

## Mechanics review checklist

- Define the positive coordinate direction visibly.
- Attach normal forces perpendicular to the relevant surface.
- Distinguish velocity, acceleration, force, and displacement labels.
- Place gravity through the center-of-mass representation unless the model says otherwise.
- Draw constraints and supports clearly enough to determine allowed motion.
- Use dashed construction lines for equilibrium, projection, or previous state.
- Label angles at the correct vertex and between the intended rays.
- Avoid pictorial proportions that imply a numerical relation not present in the task.

## Presentation reuse

When the same `.tikz` file appears on a slide, scale the whole picture but verify text size. If labels become too small, parameterize or locally override label font instead of rasterizing the diagram.
