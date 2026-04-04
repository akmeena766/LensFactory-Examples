using LensFactory
using GLMakie

# using Random
# Random.seed!(123)

# Parse the YAML file
parameters = LensModel.read_input("galaxy_parameter.yaml")

# Fit the model
LensModel.fit_model(parameters)

