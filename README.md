# iliad-intensive-D.2

Source for the goal-misgeneralisation Colab notebook of **D.2 Policy Gradients &
Misgeneralization** (Iliad Intensive). The worksheet page and both lecture decks
live in the website repo: https://iliad-intensive.org/agency/policy-gradients-misgeneralization/

Every push to `main` regenerates the notebook and force-pushes it, with its
support modules, to the
[`build`](https://github.com/iliad-team/iliad-intensive-D.2/tree/build) branch.
Nothing built is committed here.

## Exercises

- **Vanilla Policy Gradient**: on the [ARENA site](https://learn.arena.education/chapter2_rl/22_vpg/).
- **Goal Misgeneralisation & Specification Gaming**:
  [exercises](https://colab.research.google.com/github/iliad-team/iliad-intensive-D.2/blob/build/part6_goalmisgen/2.6_Specification_Gaming_and_Goal_Misgeneralisation_exercises.ipynb)
  · [solutions](https://colab.research.google.com/github/iliad-team/iliad-intensive-D.2/blob/build/part6_goalmisgen/2.6_Specification_Gaming_and_Goal_Misgeneralisation_solutions.ipynb)
  (Colab). Source: `gen/masters/master_2_6.py` + `gen/support/part6_goalmisgen/`.

## Local build

```bash
pip install -r gen/requirements-gen.txt      # once
python gen/core/main.py --chapters='2.*'     # -> build/exercises/part6_goalmisgen/
```
