#!/usr/bin/env Rscript

# lists of packages to install, organized by repository
cran_pkgs <- c("Rcpp", "RcppArmadillo", "RcppEigen", "Rcereal", "BH", "pryr",
               "lintr", "knitr", "RCurl", "car", "xtable", "pander", "foreign",
               "data.table", "nlme", "lme4", "roxygen2", "littler", "ggthemes",
               "DBI", "yaml", "fastICA", "statmod", "glmnet", "randomForest",
               "e1071", "multcomp", "caret", "mlr", "ggvis", "plotly", "mgcv",
               "gridExtra", "xgboost", "ProjectTemplate", "scatterplot3d",
               "profvis", "tmle", "future", "doFuture", "rbokeh", "elasticnet",
               "h2o", "rdrop2", "ranger", "Rtsne", "fst", "prophet"
              )

bioc_pkgs <- c("GenomicRanges", "GenomicFeatures", "GenomeInfoDb", "biomaRt",
               "BiocParallel", "rtracklayer", "GenomicAlignments", "multtest",
               "VariantAnnotation", "impute", "affy", "rhdf5", "pcaMethods",
               "Heatplus", "gwascat", "marray", "oligo", "hopach", "limma",
               "ShortRead", "AnnotationHub", "SummarizedExperiment", "Gviz",
               "Rgraphviz", "minfi", "bumphunter", "DESeq2", "edgeR", "scater",
               "scran", "SC3", "clusterExperiment"
              )

github_pkgs <- c("business-science/timetk", "business-science/tidyquant",
                 "cloudyr/rmote", "ecpolley/SuperLearner", "gaborcsardi/prompt",
                 "jalvesaq/colorout", "jimhester/covr",  "karthik/wesanderson",
                 "krlmlr/here", "krlmlr/styler", "nhejazi/nima",
                 "rlbarter/superheat", "ThinkRstat/fcuk", "yihui/xaringan",
                 "wesm/feather/R"
                )

hadley_pkgs <- paste("hadley", sep = "/",
                     c("devtools", "testthat", "pkgdown")
                    )

rstudio_pkgs <- paste("rstudio", sep = "/",
                      c("rmarkdown", "bookdown", "blogdown", "rticles", "shiny",
                        "packrat", "sparklyr", "tensorflow", "keras")
                     )

tidyverse_pkgs <- paste("tidyverse", sep = "/",
                        c("ggplot2", "dplyr", "purrr", "readr", "forcats",
                          "stringr", "dtplyr", "dbplyr", "tidyr", "tibble",
                          "broom", "lubridate", "tidyverse")
                       )

rlib_pkgs <- paste("r-lib", sep = "/",
                   c("rcmdcheck", "callr", "usethis")
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
devtools::install_github(c(github_pkgs, hadley_pkgs, rstudio_pkgs,
                           tidyverse_pkgs, rlib_pkgs),
                         force = TRUE)
