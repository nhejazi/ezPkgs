# lists of packages to install, organized by repository
cran_pkgs <- c('plyr', 'dplyr', 'pryr', 'tidyr', 'Rcpp', 'RcppEigen', 'lintr',
               'stringr', 'devtools', 'RCurl', 'RMySQL', 'data.table', 'car',
               'xtable', 'pander', 'testthat', 'foreign', 'lubridate', 'shiny',
               'reshape2', 'knitr', 'roxygen2', 'RSQLite', 'DBI', 'subsemble',
               'ggplot2', 'randomForest', 'SuperLearner', 'lme4', 'nlme', 'rgl',
               'ggvis', 'mgcv', 'multcomp', 'glmnet', 'scatterplot3d', 'ggthemes',
               'fastICA', 'e1071', 'caret', 'mlr', 'tmle', 'selectiveInference',
               'statmod', 'yaml', 'rmarkdown', 'gridExtra', 'R.devices', 'future')

bioc_pkgs <- c("GenomicRanges", "Gviz", "GenomicFeatures", "VariantAnnotation", 
               "rhdf5", "biomaRt", "limma", "edgeR", "ggbio", "gwascat", 
               "Heatplus", "rtracklayer", "impute")

github_pkgs <- c("hadley/staticdocs", "ramnathv/slidify", 
                 "ramnathv/slidifyLibraries", "nhejazi/nima")

# install packages from CRAN
install.packages(cran_pkgs)

# install packages from Bioconductor
source("http://www.bioconductor.org/biocLite.R")
biocLite(bioc_pkgs)
biocLite(ask = FALSE)

# install packages from GitHub
library(devtools)
devtools::install_github(github_pkgs)

# add the H2O package for ensemble modeling (on OSX only)
if ( Sys.info()['sysname'] == "Darwin" ) {
  install.packages("h2o", type="source", 
                   repos=(c("http://h2o-release.s3.amazonaws.com/h2o/rel-turchin/2/R")))
}
