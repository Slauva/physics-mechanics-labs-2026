# Slide plan: Position, velocity and acceleration

## Current Stage 3 revision

Direct user feedback on 2026-09-03 supersedes the editorial expansion in the
approved Stage 2 proposal retained below. The current draft now mirrors the
professor's material rather than extending it.

- Deliverables: an 11-slide 16:9 student presentation and a 30-slide 16:9
  presentation with solutions, matching the source deck lengths.
- Visible language: English only.
- The title slide uses the campus photograph and Innopolis University logo
  derived from page 1 of the professor's PDF; the title remains on one line.
- Shared sequence: title; two source review slides; Problems 1, 2(a), 2(b), 3,
  4, 5, 6, and 7.
- Removed: `Session Roadmap`, the separate modeling routine, added concept
  slides, the decision map, and the proposed timing routes.
- Unit names are decoded on the first review slide.
- Problem 1 follows the source's vertical time sequence: black material points
  represent the trains, the white material point represents the bird, and the
  four rows run from the initial separation to the collision.
- Problem 3 reuses the motorcycle and car images embedded in the professor's
  PDF and preserves the original visual arrangement.
- Problem 6 follows the professor's cabin, cable, dimension, acceleration
  arrow, and shaft-axis schematic; no bolt trajectory or extra vectors appear
  on the prompt slide.
- The base style uses an 11 pt Beamer body, white canvas, near-black text, teal
  primary accents, and limited coral/gold secondary accents.
- Worked calculations establish the governing equation before evaluating it.
  Numerical substitutions appear in the final answer card, where intermediate
  arithmetic and units are explicit. At the user's request, Problem 7 keeps the
  source coefficients 12 and 2 throughout instead of introducing auxiliary
  symbols for them.
- Solution-only material remains interleaved immediately after each problem:
  19 solution frames and 30 frames in total.

## Archived Stage 2 proposal

The sections below record the plan that the user approved before reviewing the
first complete draft. They are kept as workflow history and are not the current
slide specification.

## Editorial position

The source is a mechanics practice session rather than an experimental lab.
The new material will therefore remain in the `labs/` collection requested by
the user but will present itself on screen as a **Mechanics Practice Session**.
It will not invent equipment, a procedure, measurements, uncertainty analysis,
safety instructions, or a lab-report requirement.

The seven source problems remain in their original order. The introductory
concept slides and final recap are editorial additions derived from the source
formula review; this distinction is recorded here for approval before drafting.

## Two presentation variants

- `main.tex` — 15 shared frames: title, concepts, all problem statements, and
  recap. It contains no numerical answers or solution hints that reveal the
  method.
- `solution.tex` — the same 15 frames plus 18 interleaved solution frames,
  for 33 frames total. Each solution gives a coordinate/sign convention,
  reasoning, substitution with units, result, and a short physical check.
- Shared content stays in `content.tex`. Solution-only material uses
  `solutionframe`; no duplicate problem wording is maintained in the entry
  points.

## Proposed sequence

Frames marked **shared** appear in both PDFs. Frames marked **solution** appear
only in `solution.pdf` and immediately follow the problem they explain.

| ID | English slide title | Purpose and planned content | Variant |
|---|---|---|---|
| C01 | Position, Velocity, and Acceleration | Minimal title slide; subtitle `Mechanics Practice Session` and variant label; no placeholder institution or author | shared |
| C02 | Session Roadmap | Proposed learning outcomes, seven-problem route, and how to use the student/solution decks | shared |
| C03 | Position, Displacement, and Distance | Establish the one-dimensional coordinate, sign convention, and the distinction between displacement and path length | shared |
| C04 | Average and Instantaneous Motion | Present average velocity/acceleration and derivative definitions with units | shared |
| C05 | The Kinematics Chain | Connect \(x(t)\), \(v(t)\), and \(a(t)\) through differentiation and integration, including initial conditions | shared |
| C06 | A Consistent Modeling Routine | Four-step routine: choose frame and origin, write motion laws, impose the event condition, check units and physical domain | shared |
| P01 | Problem 1 — Trains and a Bird | Preserve the full source condition; ask for the bird's total distance | shared |
| S01 | Solution 1 — Use the Collision Time | Determine the trains' collision time and use it as the bird's flight time | solution |
| P02A | Problem 2(a) — Cheetah Pursuit | Preserve the \(40\,\mathrm{m}\) head start; ask for catch time and cheetah distance | shared |
| S02A | Solution 2(a) — Relative Speed | Derive catch time and the missing requested distance; compare exact unit conversion with the source rounding during stage 4 | solution |
| P02B | Problem 2(b) — Maximum Head Start | Preserve the \(20\,\mathrm{s}\) endurance constraint | shared |
| S02B | Solution 2(b) — The Limiting Case | Set the catch time to \(20\,\mathrm{s}\) and calculate the maximum head start | solution |
| P03 | Problem 3 — Police Pursuit | Show the delayed start and ask for overtaking speed plus both \(x(t)\) curves | shared |
| S03A | Solution 3 — Motion Laws | Define the common clock and write the car and piecewise motorcycle positions | solution |
| S03B | Solution 3 — Select the Physical Root | Solve the encounter equation and explain why the early algebraic root is outside the motorcycle model's domain | solution |
| S03C | Solution 3 — Overtaking Speed | Read the valid intersection from the graph and compute the motorcycle speed | solution |
| P04 | Problem 4 — Decaying Acceleration | Preserve \(a(t)=a_0e^{-t/\tau}\), \(v(0)=0\), and both requested quantities | shared |
| S04A | Solution 4 — Integrate for Velocity | Integrate acceleration with the initial condition and identify the velocity scale | solution |
| S04B | Solution 4 — Integrate for Position | Derive \(x(t)\), explicitly stating the source's implicit convention \(x(0)=0\) | solution |
| S04C | Solution 4 — Long-Time Behavior | Use limits to interpret the asymptotic maximum speed and long-time motion | solution |
| P05 | Problem 5 — Read a Distance–Time Graph | Reconstruct the source graph and preserve its three graphical questions | shared |
| S05A | Solution 5(a) — Average Velocity | Use total distance divided by total time with explicit unit conversion | solution |
| S05B | Solution 5(b) — Maximum Velocity | Interpret maximum velocity as the steepest tangent slope | solution |
| S05C | Solution 5(c) — When Two Velocities Match | Explain why the required tangent passes through the origin and read \(t_0\) | solution |
| P06 | Problem 6 — A Falling Bolt in an Elevator | Preserve the cabin height, elevator acceleration, release delay, and requested shaft-frame quantities | shared |
| S06A | Solution 6 — Relative to the Elevator | Use relative acceleration \(-(g+a_e)\) to find the fall time | solution |
| S06B | Solution 6 — Relative to the Shaft | Account for the bolt's initial upward speed; separate displacement from total distance | solution |
| P07 | Problem 7 — Motion from \(x(t)\) | Preserve all nine requests for \(x(t)=12t^2-2t^3\) | shared |
| S07A | Solution 7 — Differentiate the Motion | Derive \(v(t)\) and \(a(t)\), then evaluate all three quantities at \(3\,\mathrm{s}\) | solution |
| S07B | Solution 7 — Maximum Position | Find the nonzero stationary time and verify the maximum coordinate | solution |
| S07C | Solution 7 — Maximum Velocity and Stop | Maximize \(v(t)\), then evaluate acceleration at the later stop | solution |
| S07D | Solution 7 — Average Velocity | Use endpoint positions and reconcile the result with the motion graph | solution |
| C07 | Kinematics Decision Map | Recap which operation or event equation answers each common question; no new task or answer | shared |

## Timing estimate

The estimate includes short individual or pair work before revealing each
solution. It is not a source requirement and remains an editorial proposal.

| Segment | Time |
|---|---:|
| Title, roadmap, and concepts (C01–C06) | 10 min |
| Problem 1 | 5 min |
| Problem 2(a–b) | 9 min |
| Problem 3 | 14 min |
| Problem 4 | 11 min |
| Problem 5 | 11 min |
| Problem 6 | 11 min |
| Problem 7 | 16 min |
| Recap (C07) | 3 min |
| **Total** | **90 min** |

For a 50-minute session, the proposed core route is C01–C06, Problems 1, 3,
5, and 6, then C07. Problems 2, 4, and 7 remain in both PDFs and can be assigned
for independent work; no content is removed.

## Figure plan and contracts

All new instructional visuals will be LaTeX-native TikZ/PGFPlots. Decorative
animal and vehicle photographs from the source will not be reused because their
provenance is not stated and they add no required physical information. Every
figure label, legend, and annotation will be English.

### F01 — `figures/position-displacement-distance.tikz`

- Used on: C03.
- Physical claim: displacement depends only on endpoints, while distance follows
  the traveled path.
- Objects and states: one \(x\)-axis, initial point \(x_i\), turning point, and
  final point \(x_f\); directed displacement and two path segments.
- Convention: positive \(x\) points right; arrows for motion are not styled as
  forces.
- Scale intent: conceptual and explicitly marked `schematic`; segment lengths do
  not encode source data.

### F02 — `figures/kinematics-chain.tikz`

- Used on: C05 and C07.
- Physical claim: differentiation moves \(x\to v\to a\), while integration plus
  initial conditions moves in the opposite direction.
- Objects: nodes \(x(t)\), \(v(t)\), \(a(t)\), operator arrows, and compact unit
  cues.
- Scale intent: diagrammatic only; no physical coordinate system or numerical
  relation is implied.

### F03 — `figures/trains-bird.tikz`

- Used on: P01 and S01.
- Physical claim: both trains share one collision time, which is also the bird's
  total flight time.
- Objects and states: two material points at the initial separation, inward
  velocity arrows, a bird point with alternating direction, and the collision
  state.
- Convention and labels: \(+x\) right; \(60\,\mathrm{km}\),
  \(30\,\mathrm{km/h}\), and \(60\,\mathrm{km/h}\) only.
- Scale intent: `not to scale`; repeated bird trips are schematic, not a literal
  count of flights.

### F04 — `figures/cheetah-pursuit.tikz`

- Used on: P02A, S02A, P02B, and S02B.
- Physical claim: capture is the intersection of two straight \(x(t)\) lines;
  the initial vertical offset is the head start.
- Objects: \(x\)-versus-\(t\) axes, cheetah and antelope lines, head-start brace,
  capture point, and the \(20\,\mathrm{s}\) limiting line for part (b).
- Convention: \(t\ge0\), \(+x\) in the running direction; slopes labeled by
  their stated speeds rather than pictorial animal icons.
- Scale intent: geometric explanation; part (a) and part (b) states are not
  overlaid unless their labels remain unambiguous.

### F05 — `figures/police-pursuit-timeline.tikz`

- Used on: P03 and S03A.
- Physical claim: the car's clock begins at \(t=0\), but the motorcycle motion
  law begins only at \(t=2.5\,\mathrm{s}\).
- Objects and states: common \(x\)-axis, car passing the stationary officer,
  delayed motorcycle start, velocity and acceleration annotations.
- Convention: \(+x\) right; the two snapshots are separated by a time arrow.
- Scale intent: `not to scale`; spacing must not imply the distance traveled
  during the delay.

### F06 — `figures/police-pursuit-plot.tikz`

- Used on: S03B and S03C.
- Physical claim: the valid motorcycle curve is piecewise; extending its
  parabola before \(2.5\,\mathrm{s}\) creates the nonphysical early root.
- Curves: \(x_c=31t\); \(x_m=0\) before the start and
  \(x_m=1.8(t-2.5)^2\) afterward; dashed backward extension only for explaining
  the rejected root.
- Convention: true \(t\)- and \(x\)-axes with units, valid domains distinguished
  by line style as well as color.
- Scale intent: computed plot over a range that includes the physical overtake;
  numerical annotations will be verified at stage 4.

### F07 — `figures/decaying-acceleration-plots.tikz`

- Used on: P04 and S04A–S04C.
- Physical claim: normalized acceleration decays to zero while normalized
  velocity approaches one asymptotically; position becomes asymptotically
  linear.
- Curves and axes: \(u=t/\tau\), \(a/a_0=e^{-u}\),
  \(v/(a_0\tau)=1-e^{-u}\), and
  \(x/(a_0\tau^2)=u+e^{-u}-1\); a dashed velocity asymptote.
- Convention: \(u\ge0\); the plots use exact source-derived expressions and no
  invented parameter values.
- Scale intent: normalized plots; they do not imply a finite time at which the
  limiting speed is reached.

### F08 — `figures/distance-time-source-graph.tikz`

- Used on: P05 and S05A–S05C.
- Physical claim: secant and tangent slopes encode the requested velocities.
- Objects: the source grid and visible \(S(t)\) curve reconstructed from S9/A19;
  solution-only secants, tangents, and read-off guides.
- Convention: \(S\) in metres and \(t\) in seconds on the base graph; solution
  calculations may also show converted centimetres explicitly.
- Scale intent: labeled `reconstructed from the source graph`; no analytic
  function or measurement precision is inferred from the drawn curve.

### F09 — `figures/elevator-bolt.tikz`

- Used on: P06 and S06A–S06B.
- Physical claim: the bolt has zero initial velocity relative to the elevator
  but a nonzero upward velocity relative to the shaft.
- Objects and states: elevator cabin at release, floor-to-ceiling dimension,
  bolt, shaft-fixed \(+y\) axis, elevator acceleration, initial bolt velocity,
  highest point, and impact state.
- Convention: \(+y\) upward; acceleration and velocity arrows are labeled
  distinctly; gravity is drawn at the bolt.
- Scale intent: `not to scale`; the trajectory shape and cabin spacing do not
  represent measured proportions beyond the stated \(2.7\,\mathrm{m}\).

### F10 — `figures/polynomial-motion-plots.tikz`

- Used on: P07 and S07A–S07D.
- Physical claim: derivatives and extrema of the exact \(x(t)\) law explain all
  nine requested quantities.
- Curves: aligned plots of \(x(t)=12t^2-2t^3\),
  \(v(t)=24t-6t^2\), and \(a(t)=24-12t\), with guides at relevant times.
- Convention: \(t\) in seconds; vertical axes carry correct SI units; positive
  and negative regions are visible.
- Scale intent: exact computed plots, not sketches; only values verified during
  stage 4 receive numerical callouts.

## Drafting rules accepted with this plan

- Problem statements remain complete but may be split into readable text and a
  `Find` panel; no data or requested quantity may disappear.
- Every slide has one teaching purpose and uses projector-readable text.
- Prompt slides never reveal solution equations or final values.
- Solution slides show reasoning rather than only an answer card.
- Source notation may be normalized for consistency, but every correction or
  derived value is audited and logged during stage 4.
- The graph in Problem 5 is reconstructed transparently; it is not presented as
  newly measured data.
- The light theme and restrained blue/teal accents carry meaning through labels,
  geometry, and line styles, not color alone.

## Stage 2 acceptance checklist

- The practice-session framing is acceptable inside the lab presentation
  collection.
- The proposed introductory Physics I audience is appropriate.
- All seven tasks and their original order are retained.
- The 15-frame student deck and 33-frame solution deck are an acceptable scope.
- The interleaved solution structure and proposed 90-minute timing are suitable.
- The ten TikZ/PGFPlots figure contracts are scientifically and visually suitable.
- Replacing uncredited decorative photographs with vector diagrams is acceptable.
- Stage 3 may draft the English slide text and LaTeX only after explicit approval.
