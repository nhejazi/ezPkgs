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
               "R.devices", "future", "selectiveInference", "rbokeh",
               "gaussfacts", "rmsfact", "rfoaas", "dtplyr", "tibble",
               "shiny"
              )

bioc_pkgs <- c("GenomicRanges", "GenomicFeatures", "GenomeInfoDb",
               "limma", "BiocParallel", "rtracklayer", "biomaRt",
               "GenomicAlignments", "edgeR", "VariantAnnotation",
               "multtest", "impute", "affy", "rhdf5", "pcaMethods",
               "Heatplus", "gwascat", "marray", "EDASeq", "oligo",
               "aroma.light", "DESeq2", "ShortRead", "Rgraphviz",
               "Gviz", "bumphunter", "minfi", "bsseq", "DSS"
              )

github_pkgs <- c("ramnathv/slidify", "ramnathv/slidifyLibraries",
                 "ramnathv/htmlwidgets", "ecpolley/SuperLearner",
                 "ledell/subsemble", "dgrtwo/broom", "dgrtwo/gganimate",
                 "rstudio/bookdown", "rstudio/sparklyr",
                 "jimhester/covr", "davidgohel/ggiraph",
                 "jalvesaq/colorout"
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
install.packages(c("repr", "pbdZMQ"))
devtools::install_github("IRkernel/IRdisplay")
devtools::install_github("IRkernel/IRkernel")
IRkernel::installspec(user = FALSE)

# add H2O on my (local) machines only (Java req. => NOT for Chromebook Xubuntu)
if (as.character(Sys.info()["effective_user"]) == "nimahejazi") {
  # The following two commands remove any previously installed H2O packages for R
  if ("package:h2o" %in% search()) { detach("package:h2o", unload = TRUE) }
  if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }

  # Next, we download packages that H2O depends on
  pkgs <- c("methods","statmod","stats","graphics","RCurl","jsonlite","tools","utils")
  for (pkg in pkgs) {
      if (! (pkg %in% rownames(installed.packages()))) { install.packages(pkg) }
  }

  # Now we download and install the H2O package for R
  install.packages("h2o", type = "source",
                   repos=(c("http://h2o-release.s3.amazonaws.com/h2o/rel-turchin/9/R")))
}
