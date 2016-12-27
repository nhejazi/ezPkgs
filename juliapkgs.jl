#!/usr/bin/env julia

#= install Julia packages and iJulia kernel for Jupyter
Thematic lists of packages useful for a variety of core scientific computing tasks,
including loops to install all packages iteratively using Julia's package manager.
=#

# pacakges for integrating with other software/programmatic systems
pkgs_progs = ["IJulia", "Blink", "Compat", "Homebrew", "FileIO", "MacroTools",
              "Lint", "Lazy", "Cairo", "RCall", "PyCall"]

# packages for data science and data visualization
pkgs_datas = ["DataArrays", "DataFrames", "Plots", "Gadfly", "Winston",
              "PyPlot", "Plotly", "Bokeh"]

# packages for statistics and machine learning
pkgs_stats = ["StatsBase", "Distributions", "Distances", "MultivariateStats",
              "HypothesisTests", "MLBase", "GLM", "GLMNet", "KernelDensity",
              "Clustering", "NMF", "RegERMs", "MCMC", "Loess", "XGBoost",
              "Mocha", "ScikitLearn"]


# install packages iteratively from above lists
for pkg = 1:length(pkgs_progs)
  Pkg.add(pkgs_progs[pkg])
end

for pkg = 1:length(pkgs_stats)
  Pkg.add(pkgs_stats[pkg])
end

for pkg = 1:length(pkgs_datas)
  Pkg.add(pkgs_datas[pkg])
end
