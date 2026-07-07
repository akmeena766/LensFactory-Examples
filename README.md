# LensFactory-Examples

Worked examples for the [`LensFactory.jl`](https://github.com/akmeena766/LensFactory.jl) strong lens
modeling package, accompanying [Meena (2026)](https://arxiv.org/abs/aaaa.bbbbb).

***Basic familiarity with Julia is assumed.***

---
## Setup
The examples are validated against `LensFactory.jl` v0.0.9.

```julia-repl
pkg> add LensFactory@0.0.9
```

Lens fitting benefits from multi-threading; run scripts with, e.g.,
```bash
julia -t auto galaxy_fit.jl
```

Plotting in the notebooks requires `Makie` (loaded automatically as a package
extension of `LensFactory`).

---

## Basic Lensing (Jupyter Notebooks)

| # | Notebook                                                                | Covers                                                     |
|---|-------------------------------------------------------------------------|------------------------------------------------------------|
| 1 | [Constants and Cosmology](Basic/Example1_Constants_and_Cosmology.ipynb) | `Constants` and `Cosmology` modules                        |
| 2 | [Point mass lens](Basic/Example2_Point_mass_lens.ipynb)                 | Isolated and multiple point lenses; built-in plotting      |
| 3 | [Plummer lens model](Basic/Example3_Plummer_lens_model.ipynb)           | Isolated and multiple Plummer lenses; built-in plotting    |
| 4 | [Lensing quantities](Basic/Example4_Lensing_quantities.ipynb)           | Computing and manually plotting lensing quantities         |
| 5 | [Multi-plane lensing](Basic/Example5_MultiPlane_lensing.ipynb)          | `MultiPlane` module: double lens plane, lensing quantities |
| 6 | [Singularity maps](Basic/Example6_Singularity_maps.ipynb)               | `SingularityMap` module: A3-lines and point singularities  |


---
## Galaxy-Scale Lenses

- **MockLens** — complete end-to-end workflow: generate a mock quad lens
  (`galaxy_mock.jl`), fit it (`galaxy_fit.jl`), and inspect the results
  (`galaxy_read.jl`). Start here.

---
## Cluster-Scale Lenses

Input YAML configurations and constraint catalogs for the cluster
reconstructions presented in [Meena (2026)](https://arxiv.org/abs/aaaa.bbbbb):

- **Ares** — simulated cluster from the Meneghetti et al. (2017) frontier
  fields lens modeling challenge (85 sources / 242 images)
- **Hera** — simulated cluster from the same challenge (19 sources / 65 images).
