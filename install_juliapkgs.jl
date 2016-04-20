#= install Julia packages and iJulia kernel for Jupyter
Thematic lists of packages useful for a variety of core scientific computing tasks,
including loops to install all packages iteratively using Julia's package manager.
=#

# pacakges for integrating with other software/programmatic systems
pkgs_progs = ["Atom","AWS","Blink","Bokeh","CodeTools","Compat","GitHub","Homebrew","IJulia","Jewel",
              "LaTeXStrings","Markdown","TexExtensions","PyCall","RCall","Lazy","LibCURL","MacroTools","ZMQ"]

pkgs_maths = ["ArrayViews","Calculus","Cartesian","Distances","DualNumbers","ForwardDiff","Measures","NaNMath",
              "Optim","Polynomials","WaveletMatrices","Wavelets","WoodburyMatrices","Contour","Cubature","Grid",
              "Hexagons","NumericFuns","PDMats"]

# packages for statistics and machine learning
pkgs_stats = ["AverageShiftedHistograms","BinDeps","Bootstrap","CovarianceMatrices","DimensionalityReduction",
              "Distributions","FixedEffectModels","GLM","GLMNet","GaussianMixtures","HypothesisTests","KLDivergence",
              "KernSmooth","KernelDensity","KernelEstimator","LARS","Lasso","Loess","MCMC","MixedModels",
              "MultivariateStats","RDatasets","StatsBase","StatsFuns","SmoothingKernels","TimeData","TimeModels",
              "TimeSeries","CauseMap","Clustering","DecisionTree","IntervalTrees","MLBase","MachineLearning"]

# packages for data science and data visualization
pkgs_datsc = ["BufferedStreams","CSV","DataArrays","DataFrames","DataStreams","DataStructures","JSON","Images",
              "ImmutableArrays","IntArrays","NullableArrays","FileIO","Hiccup","ASCIIPlots","Cairo","Gadfly",
              "Gaston","PyPlot","Winston"]

# packages for miscellaneous operations
pkgs_miscs = ["Calendar","ColorBrewer","ColorTypes","ColorVectorSpace","Colors","Compose","Dates","Nettle","Devectorize",
              "Docile","FMIndexes","FactCheck","FixedPointNumbers","SortingAlgorithms","Yeppp","Bio","BioSeq"]


# install packages iteratively from thematic lists above
for progs=1:length(pkgs_progs)
  Pkg.add(pkgs_progs[progs])
end

for maths=1:length(pkgs_maths)
  Pkg.add(pkgs_maths[maths])
end

for stats=1:length(pkgs_stats)
  Pkg.add(pkgs_stats[stats])
end

for datas=1:length(pkgs_datsc)
  Pkg.add(pkgs_datsc[datas])
end

for miscs=1:length(pkgs_miscs)
  Pkg.add(pkgs_miscs[miscs])
end
