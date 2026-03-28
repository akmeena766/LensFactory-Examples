# LensFactory_Examples

This repository contains examples for [`LensFactory`](https://github.com/akmeena766/LensFactory.jl) package. The list (and small description) of these examples is as follows:
- **Basic lensing:**
   1. <ins>Example-1: Constants and Cosmology</ins>: This example describes the basic use of available `Constants` and `Cosmology` modules in `LensFactory` package.

   2. <ins>Example-2: Basic strong lensing</ins>: This example describes how to construct simple isolated lens models as well as lens models made of multiple components. In addition, it also shows the use of in-built plotting functions using `Makie` package.

   3. <ins>Example-3: Lensing quantities</ins>: This example describes how to calculate different lensing quantities and plot them manually. `LensFacotry` has an in-built function named `plot_sky` which initiates a nice looking empty plot that one can use.

   4. <ins>Example-4: Multi-plane lensing</ins>: This example uses `MultiPlane` module in `LensFacotry` to describe basics of multiplane lensing, such as initializing a double lens plane, use of in-built multi-plane plotting functions, and calculaitng various lensing quantities.

- **Lens modelling:**
   1. <ins>GalaxyLens</ins>: This folder contains multiple scripts to generate and fit a mock galaxy-scale lens.
      1. `galaxy_mock.jl`: Generates a mock galaxy lens system using `SIE` lens model.
      2. `galaxy_fit.jl`: Fits the mock galaxy lens system using `SIE` lens model based on the input parameters from `galaxy_parameters.yaml` file. By default, the fit is saved into a `JLD2` file.
      3. `galaxy_read.jl`: Reads the `JLD2` file. After reading, we can perform various diagnostics on the fit.

