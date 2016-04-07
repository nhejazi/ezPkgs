# lists of packages to install, organized by repository
cran_pkgs <- c('car', 'tidyr', 'dplyr', 'pryr', 'ggplot2', 'randomForest',
               'SuperLearner', 'lme4', 'nlme', 'stringr', 'lubridate', 'ggvis',
               'rgl', 'htmlwidgets', 'dygraphs', 'network3D', 'threeJS',
               'googleVis', 'mgcv', 'multcomp', 'vcd', 'glmnet', 'survival',
               'caret', 'shiny', 'xtable', 'pander', 'devtools', 'zoo', 'xts',
               'quantmod', 'data.table', 'Rcpp', 'parallel', 'testthat',
               'roxygen2', 'foreign', 'ade4', 'scatterplot3d', 'Rcurl', 'DBI',
               'RMySQL', 'impute', 'fastICA', 'e1071', 'reshape2', 'lintr',
               'RColorBrewer', 'neuralnet', 'nnet', 'clusterGeneration',
               'RSNNS', 'tmle', 'ltmle', 'selectiveInference', 'knitr',
               'htmltools', 'yaml', 'shiny', 'rmarkdown', 'png', 'stringi',
               'gridExtra', 'rversions', 'R.devices', 'future')

bioc_pkgs <- c("GenomicRanges", "Gviz", "GenomicFeatures", "VariantAnnotation", 
               "rhdf5", "biomaRt", "limma", "affy", "bsseq", "ggbio", "made4", 
               "gwascat", "hgu133plus2cdf", "hgu133plus2probe", "Heatplus",
               "TxDb.Hsapiens.UCSC.hg18.knownGene", "rtracklayer")

github_pkgs <- c("hadley/staticdocs", "ramnathv/slidify", 
                 "ramnathv/slidifyLibraries", "nhejazi/nima")

# install packages from CRAN
install.packages(cran_pkgs, repos = "https://cran.cnr.berkeley.edu/")

# install packages from Bioconductor
source("http://www.bioconductor.org/biocLite.R")
biocLite(bioc_pkgs)
biocLite(ask = FALSE)

# install packages from GitHub
library(devtools)
devtools::install_github(github_pkgs)
