# lists of packages to install, organized by repository
cran_pkgs <- c("plyr", "dplyr", "pryr", "tidyr", "Rcpp", "RcppEigen",
               "lintr", "knitr", "RCurl", "RMySQL", "ggplot2", "car",
               "devtools", "xtable", "pander", "testthat", "foreign",
               "lubridate", "shiny", "stringr", "data.table", "nlme",
               "lme4", "reshape2", "roxygen2", "RSQLite", "ggthemes",
               "DBI", "yaml", "rgl", "fastICA", "statmod", "glmnet",
               "randomForest", "e1071", "multcomp", "caret", "mlr",
               "ggvis", "mgcv", "rmarkdown", "gridExtra", "packrat",
               "ProjectTemplate", "scatterplot3d", "R.devices", "future",
               "SuperLearner", "subsemble", "tmle", "selectiveInference")

bioc_pkgs <- c("GenomicRanges", "Gviz", "GenomicFeatures", "ggbio",
               "VariantAnnotation", "rhdf5", "biomaRt", "biobroom",
               "limma", "edgeR", "gwascat", "Heatplus", "impute",
               "rtracklayer")

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

# add packages for the IRkernel in Jupyter notebooks
install.packages(c("rzmq","repr","IRkernel","IRdisplay"), 
                 repos = c("http://irkernel.github.io/",
                 getOption("repos")))
IRkernel::kernelspec()

# add the H2O package for ensemble modeling (on OSX only)
if ( Sys.info()['sysname'] == "Darwin" ) {
  install.packages("h2o", type="source", 
                   repos=(c("http://h2o-release.s3.amazonaws.com/h2o/rel-turchin/2/R")))
}
