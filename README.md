# LensFactory-Examples

This repository contains examples for [`LensFactory`](https://github.com/akmeena766/LensFactory.jl) package. Here I assume that user knows basics of Julia. The list (and small description) of these examples is as follows:
- **Basic lensing:**
   1. <ins>Example-1: Constants and Cosmology</ins>: This example describes the basic use of available `Constants` and `Cosmology` modules in `LensFactory` package.

   2. <ins>Example-2: Point mass lens</ins>: This example describes how to construct simple isolated point lens model as well as lens made of multiple point lenses. In addition, it also shows the use of in-built plotting functions using `Makie` package.
   
   3. <ins>Example-23: Plummer lens model</ins>: This example describes how to construct simple isolated Plummer lens model as well as lens made of multiple Plummer lenses. In addition, it also shows the use of in-built plotting functions using `Makie` package.
   
   4. <ins>Example-4: Lensing quantities</ins>: This example describes how to calculate different lensing quantities and plot them manually instead of using in-built functions. In principle, while plotting, we can start from creating a figure but `LensFactory` has this one function plot, `plot_sky`, which can be used to quickly generate an empty plane and then plot any quantity on top of it.

   5. <ins>Example-5: Multi-plane lensing</ins>: This example uses `MultiPlane` module in `LensFacotry` to describe basics of multiplane lensing, such as initializing a double lens plane, use of in-built multi-plane plotting functions, and calculaitng various lensing quantities.

- **ClusterLens**: This folder contains scripts for the follwing galaxy cluster lenses.
   1. Ares
   2. Hera

- **GalaxyLens:** This folder contains multiple scripts to generate and fit a mock galaxy-scale lens.
   1. MockLens
   2. HE0435-1123

