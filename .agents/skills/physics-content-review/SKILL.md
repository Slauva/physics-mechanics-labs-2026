---
name: physics-content-review
description: Review mechanics problems, derivations, numerical answers, units, experimental procedures, and student/solution consistency against supplied sources. Use for scientific or pedagogical review; not for a layout-only repair or approving a workflow stage.
---

# Physics content review

Produce an evidence-based review of the requested material. Scientific review does not approve or advance a workflow stage.

## Scope and evidence

- Read the material's `PLAN.md`, relevant `WORKLOG.md` entries, and the requested source, task, and solution files. Respect the current scope and any existing approval.
- Compare claims with the immutable originals in `source/`; use a digest as a navigation aid, not a replacement for checking disputed source details. Give source page/task references where available.
- Distinguish supplied values, stated modeling assumptions, derived results, and editorial explanations. Never supply invented measurements or silently change a condition to make an answer work.
- If a source is unavailable or an ambiguity changes the result, state what cannot be verified and the precise missing information. Continue checks that do not depend on it.

## Scientific checks

Select checks relevant to the problem; do not demand an experiment or uncertainty analysis for a purely theoretical exercise.

- Establish the physical system, frame of reference, positive directions, initial conditions, and validity of the model.
- Independently derive the result from the stated conditions before comparing it with the proposed solution. Check dimensions, signs, vector/scalar distinctions, boundary and limiting cases, and the domain of the formula.
- Recompute numerical substitutions with units and sensible significant figures. Distinguish exact values from rounded values and measured data. Use a small calculation when it improves confidence; save generated scratch files only in `output/`.
- For motion, distinguish position, displacement, and path length; velocity and speed; average and instantaneous quantities. Check changes of reference frame explicitly when relevant.
- For experiments, trace the procedure to observable measurements and the requested calculation. Check uncertainty propagation only when the inputs and measurement model support it; flag missing instrument precision rather than inventing it.
- Verify that diagrams encode the same conditions as the prose and equations. A drawing's apparent scale is not numerical evidence unless the task says it is.
- Check that the student version contains enough information to solve the task, that complete reasoning appears in the solution version, and that answers or solution-only annotations do not leak into the student version.

## Review result

Report each substantive finding with its file/page/task location, evidence or short calculation, impact on the answer or learner, and a concrete correction or missing decision. Distinguish a demonstrated error from an unresolved assumption or optional teaching improvement. If no error is found, state the scope checked and any unavailable evidence.

For a review-only request or delegated audit, return findings without modifying sources, plans, or logs. When corrections are requested, make only supported changes inside the authorized scope and append checks and remaining questions to `WORKLOG.md`; preserve stage status. Use `physics-latex-authoring` to build and visually verify changed deliverables. The main agent owns shared logs when work is delegated.
