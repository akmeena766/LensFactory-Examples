using LensFactory
using GLMakie

using JLD2

# LensModel.save_best_fit("Simulated system_2026-03-05.jld2")

data = jldopen("Simulated system_2026-03-24.jld2", "r")
results = data["optimizer"]
chains = data["chains"]
parameters = data["model"]
chi2 = data["chi2"]
close(data)

# free_params = LensModel.free_parameter_names(parameters)

# fig = LensModel.plot_corner(results; param_names=free_params)
# display(fig)

# Sort results (Best chi2 first)
sort!(results, by = x -> x.f, rev = true)
best_θ = results[1].θ
best_val = results[1].f

same_theta = 0
same_chi2 = 0
for r in results
    # Calculate relative difference for parameters (avoiding division by zero)
    println(r.θ)
    rel_diff_θ = abs.(r.θ .- best_θ) ./ (abs.(best_θ) .+ 1e-8)
    println(rel_diff_θ)
    if all(rel_diff_θ .< 1E-2)
        global same_theta += 1
    end

    rel_diff_f = abs.(r.f - best_val) ./ (abs(best_val) + 1e-8)
    if all(rel_diff_f .< 1E-2)
        global same_chi2 += 1
    end
end
println("same_theta: ", same_theta)
println("same_chi2: ", same_chi2)