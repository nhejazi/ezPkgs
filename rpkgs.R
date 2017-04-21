#!/usr/bin/env Rscript

# lists of packages to install, organized by repository
cran_pkgs <- c("Rcpp", "RcppEigen", "plyr", "dplyr", "pryr", "tidyr",
               "lintr", "knitr", "RCurl", "purrr", "ggplot2", "car",
               "devtools", "xtable", "pander", "testthat", "foreign",
               "lubridate", "shiny", "stringr", "data.table", "nlme",
               "lme4", "reshape2", "roxygen2", "littler", "ggthemes",
               "DBI", "yaml", "fastICA", "statmod", "glmnet", "mlr",
               "randomForest", "e1071", "multcomp", "caret", "ggvis",
               "plotly", "mgcv", "rmarkdown", "gridExtra", "xgboost",
               "ProjectTemplate", "scatterplot3d", "profvis", "tmle",
               "R.devices", "future", "tibble", "shiny", "sparklyr",
               "rbokeh", "dtplyr", "elasticnet", "stargazer", "h2o",
               "rdrop2", "bartMachine", "ranger", "fst"
              )

bioc_pkgs <- c("GenomicRanges", "GenomicFeatures", "GenomeInfoDb", "biomaRt",
               "BiocParallel", "rtracklayer", "GenomicAlignments", "multtest",
               "VariantAnnotation", "impute", "affy", "rhdf5", "pcaMethods",
               "Heatplus", "gwascat", "marray", "EDASeq", "oligo", "limma",
               "aroma.light", "ShortRead", "Rgraphviz", "Gviz", "hopach",
               "bumphunter", "minfi", "AnnotationHub"
              )

github_pkgs <- c("krlmlr/here", "ramnathv/slidify", "ramnathv/slidifyLibraries",
                 "ramnathv/htmlwidgets", "jalvesaq/colorout", "dgrtwo/broom",
                 "ecpolley/SuperLearner", "rstudio/bookdown", "jimhester/covr",
                 "karthik/wesanderson", "yihui/xaringan", "njtierney/naniar",
                 "richfitz/remake", "hadley/pkgdown", "gaborcsardi/prompt",
                 "tjmahr/WrapRmd"
                )

# put all packages in a common folder (prevents R version issues)
if (as.character(Sys.info()["effective_user"]) == "nimahejazi") {
  if (!file.exists("~/.Rlibrary")) {
    dir.create("~/.Rlibrary", showWarnings = FALSE)
  }
  .libPaths("~/.Rlibrary")
}

# install packages from CRAN
install.packages(cran_pkgs)

# install packages from Bioconductor
source("http://www.bioconductor.org/biocLite.R")
biocLite(bioc_pkgs)
biocLite(ask = FALSE)

# install packages from GitHub
library(devtools)
devtools::install_github(github_pkgs, force = TRUE)
devtools::install_github("nhejazi/nima", ref = "develop")

# add packages for the R kernel in Jupyter
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ',
                   'devtools', 'uuid', 'digest'))
devtools::install_github("IRkernel/IRkernel")
IRkernel::installspec(user = FALSE)
