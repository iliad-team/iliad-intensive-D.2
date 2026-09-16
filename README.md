# iliad-intensive-D.2

Source for **D.2 Policy Gradients & Misgeneralization** of the Iliad Intensive:
two beamer decks and the goal-misgeneralisation Colab notebook.

Every push to `main` builds everything and force-pushes the result to the
[`build`](https://github.com/iliad-team/iliad-intensive-D.2/tree/build) branch.
Nothing built is committed here.

## Slides

| Deck | Present | Handout |
| --- | --- | --- |
| Vanilla Policy Gradient | [pdf](https://github.com/iliad-team/iliad-intensive-D.2/blob/build/slides/vpg-slides-present.pdf) | [pdf](https://github.com/iliad-team/iliad-intensive-D.2/blob/build/slides/vpg-slides-handout.pdf) |
| Goal Misgeneralisation & Specification Gaming | [pdf](https://github.com/iliad-team/iliad-intensive-D.2/blob/build/slides/goalmisgen-slides-present.pdf) | [pdf](https://github.com/iliad-team/iliad-intensive-D.2/blob/build/slides/goalmisgen-slides-handout.pdf) |

## Exercises

- **Vanilla Policy Gradient**: on the [ARENA site](https://learn.arena.education/chapter2_rl/22_vpg/).
- **Goal Misgeneralisation & Specification Gaming**:
  [exercises](https://colab.research.google.com/github/iliad-team/iliad-intensive-D.2/blob/build/part6_goalmisgen/2.6_Specification_Gaming_and_Goal_Misgeneralisation_exercises.ipynb)
  · [solutions](https://colab.research.google.com/github/iliad-team/iliad-intensive-D.2/blob/build/part6_goalmisgen/2.6_Specification_Gaming_and_Goal_Misgeneralisation_solutions.ipynb)
  (Colab). Source: `gen/masters/master_2_6.py` + `gen/support/part6_goalmisgen/`.

## Local build

```bash
./build.sh                                   # both decks -> *-present.pdf, *-handout.pdf
pip install -r gen/requirements-gen.txt      # once
python gen/core/main.py --chapters='2.*'     # notebook -> build/exercises/part6_goalmisgen/
```
