# lists of packages to install, organized by repository
cran_pkgs <- c('car', 'tidyr', 'dplyr', 'pryr', 'ggplot2', 'randomForest',
               'SuperLearner', 'lme4', 'nlme', 'stringr', 'lubridate', 'ggvis',
               'rgl', 'mgcv', 'multcomp', 'vcd', 'glmnet', 'survival', 'lintr',
               'shiny', 'xtable', 'pander', 'devtools', 'zoo', 'xts', 'Rcpp', 
               'data.table', 'parallel', 'testthat', 'lars', 'roxygen2', 'ade4',
               'foreign', 'scatterplot3d', 'Rcurl', 'DBI', 'RMySQL', 'impute',
               'fastICA', 'e1071', 'reshape2', 'RColorBrewer', 'caret', 'mlr',
               'neuralnet', 'nnet', 'clusterGeneration', 'RSNNS', 'tmle', 'ltmle',
               'selectiveInference', 'knitr', 'htmltools', 'yaml', 'shiny',
               'rmarkdown', 'png', 'stringi', 'gridExtra', 'rversions', 'R.devices',
               'future', 'ggthemes', 'ElemStatLearn', 'session', 'subsemble')

bioc_pkgs <- c("GenomicRanges", "Gviz", "GenomicFeatures", "VariantAnnotation", 
               "rhdf5", "biomaRt", "limma", "affy", "bsseq", "ggbio", "made4", 
               "gwascat", "Heatplus", "rtracklayer", "edgeR", "statmod")

github_pkgs <- c("hadley/staticdocs", "ramnathv/slidify", 
                 "ramnathv/slidifyLibraries", "nhejazi/nima")

# install packages from CRAN
if (as.logical(Sys.info()["sysname"] == "Darwin") == TRUE) {
  install.packages(cran_pkgs, repos = "https://cran.cnr.berkeley.edu/")
} else {
  install.packages(cran_pkgs, repos = "http://cran.cnr.berkeley.edu/")
}

# install packages from Bioconductor
source("http://www.bioconductor.org/biocLite.R")
biocLite(bioc_pkgs)
biocLite(ask = FALSE)

# install packages from GitHub
library(devtools)
devtools::install_github(github_pkgs)

# add the H2O package for ensemble modeling
install.packages("h2o", type="source", 
                repos=(c("http://h2o-release.s3.amazonaws.com/h2o/rel-turchin/2/R")))
