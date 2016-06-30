#= install Julia packages and iJulia kernel for Jupyter
Thematic lists of packages useful for a variety of core scientific computing tasks,
including loops to install all packages iteratively using Julia's package manager.
=#

# pacakges for integrating with other software/programmatic systems
pkgs_progs = ["Atom","AWS","Blink","Bokeh","CodeTools","Compat","GitHub","Homebrew","IJulia","Jewel",
              "LaTeXStrings","Markdown","TexExtensions","PyCall","Lazy","LibCURL","MacroTools","ZMQ",
              "Plotly"]

# packages for data science and data visualization
pkgs_datas = ["BufferedStreams","CSV","DataArrays","DataFrames","DataStreams","DataStructures","JSON",
              "Images","NullableArrays","FileIO","Cairo","Gadfly","PyPlot"]

# packages for basic mathematical manipulations
pkgs_maths = ["ArrayViews","Cartesian","Distances","DualNumbers","ForwardDiff","NumericFuns","PDMats",
              "NaNMath","Optim","Polynomials","WaveletMatrices","Wavelets","WoodburyMatrices"]

# packages for statistics and machine learning
pkgs_stats = ["AverageShiftedHistograms","Bootstrap","CovarianceMatrices","MultivariateStats","Lora",
              "Distributions","GLM","RCall","RDatasets","ConjugatePriors","KernelDensity","PGM",
              "RegERMs","StatsBase","StatsFuns","Clustering","MLBase","NMF"]

# packages for miscellaneous operations
pkgs_miscs = ["Calendar","ColorBrewer","ColorTypes","ColorVectorSpace","Colors","Compose","Dates",
              "Nettle","Docile","FMIndexes","FactCheck","FixedPointNumbers"]


# install packages iteratively from thematic lists above
for progs=1:length(pkgs_progs)
  Pkg.add(pkgs_progs[progs])
end

for datas=1:length(pkgs_datas)
  Pkg.add(pkgs_datas[datas])
end

for miscs=1:length(pkgs_miscs)
  Pkg.add(pkgs_miscs[miscs])
end

for maths=1:length(pkgs_maths)
  Pkg.add(pkgs_maths[maths])
end

for stats=1:length(pkgs_stats)
  Pkg.add(pkgs_stats[stats])
end
