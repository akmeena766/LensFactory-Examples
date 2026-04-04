using LensFactory
using JLD2
using GLMakie

# Read the JLD2 file
data = jldopen("galaxy_2026-04-04.jld2", "r")
results = data["optimizer"]
chains = data["chains"]
parameters = data["model"]
chi2 = data["chi2"]
close(data)

# Get free parameter names
free_params = LensModel.free_parameter_names(parameters)

# Get best fit rms
LensModel.get_best_fit_rms(parameters, chains, chi2)

# Print GR report
LensModel.print_gr_report(chains, param_names=free_params, burn_in=0.4)

# Time series diagnostics
LensModel.time_series_diagnostics(chains, param_names=free_params)

# Acceptance diagnostics
LensModel.acceptance_diagnostics(chains, burn_in=0.4)

# Corner plot
fig = LensModel.plot_corner(chains, chi2; param_names=free_params, burn_in=0.4)

# Plot best model
fig = LensModel.plot_best_model(parameters, chains, chi2)