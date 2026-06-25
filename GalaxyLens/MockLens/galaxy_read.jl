using LensFactory
using JLD2
using GLMakie

# Read the JLD2 file
jldopen("galaxy_2026-04-22.jld2", "r") do data
   # Read data
   model = data["model"]
   optimizer = data["optimizer"]
   chains = data["chains"]
   chi2 = data["chi2"]
   
   # Get free parameter names
   free_params = LensModel.free_parameter_names(model)

   # Get best fit rms
   # LensModel.get_best_fit_rms(parameters, chains, chi2)

   # Print GR report
   # LensModel.print_gr_report(chains, param_names=free_params, burn_in=0.4)

   # Time series diagnostics
   # LensModel.time_series_diagnostics(chains, param_names=free_params)

   # Acceptance diagnostics
   # LensModel.acceptance_diagnostics(chains, burn_in=0.4)

   # Corner plot
   # fig = LensModel.plot_corner(chains, chi2; free_parameter_names=free_params, burn_in=0.2)
   # fig = LensModel.plot_corner(results; free_parameter_names=free_params)

   # Plot best model
   # fig = LensModel.plot_best_model(parameters, chains, chi2; plot_error=false)

   # Predict counter-images
   # LensModel.predict_image(data, [0.50, 0.17], [0.50, 0.69], 1.5; unit=:arcsec)

   # aa = LensModel.get_best_fit_parameters(chi2; chains=chains, with_errors=true, print_table=true, free_parameter_names=free_params);
end





