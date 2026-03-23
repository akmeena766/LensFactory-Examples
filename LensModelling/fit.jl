using LensFactory
using GLMakie
using JLD2

# using Random
# Random.seed!(123)

# Parse the YAML file
parameters = LensModel.read_input("param_direct.yaml")

chains, log_likelihood = LensModel.fit_model(parameters)

free_params = LensModel.free_parameter_names(parameters)

LensModel.get_best_fit_rms(parameters, chains, log_likelihood)

# LensModel.print_gr_report(chains, param_names=free_params, burn_in=0.4)

# LensModel.time_series_diagnostics(chains, param_names=free_params)

# LensModel.acceptance_diagnostics(chains, burn_in=0.4)

# fig = LensModel.plot_corner(chains, log_likelihood; param_names=free_params, burn_in=0.4)

# fig = LensModel.plot_best_model(xx, yy, parameters, chains, log_likelihood)