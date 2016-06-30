# lists of packages to install, organized by repository
cran_pkgs <- c("Rcpp", "RcppEigen", "plyr", "dplyr", "pryr", "tidyr",
               "lintr", "knitr", "RCurl", "RMySQL", "ggplot2", "car",
               "devtools", "xtable", "pander", "testthat", "foreign",
               "lubridate", "shiny", "stringr", "data.table", "nlme",
               "lme4", "reshape2", "roxygen2", "RSQLite", "ggthemes",
               "DBI", "yaml", "rgl", "fastICA", "statmod", "glmnet",
               "randomForest", "e1071", "multcomp", "caret", "mlr",
               "ggvis", "mgcv", "rmarkdown", "gridExtra", "packrat",
               "ProjectTemplate", "scatterplot3d", "tmle", "littler",
               "purrr", "R.devices", "future", "rfoaas", "rmsfact",
               "gaussfacts", "selectiveInference", "plotly")

bioc_pkgs <- c("GenomicRanges", "GenomicFeatures", "GenomeInfoDb",
               "limma", "BiocParallel", "rtracklayer", "biomaRt",
               "GenomicAlignments", "edgeR", "VariantAnnotation",
               "multtest", "impute", "affy", "rhdf5", "pcaMethods",
               "Heatplus", "gwascat", "marray", "EDASeq", "oligo",
               "aroma.light", "DESeq2", "ShortRead", "ensembledb",
               "Gviz", "Rgraphviz", "bumphunter", "minfi", "BiSeq",
               "bsseq", "DSS")

github_pkgs <- c("hadley/staticdocs", "ramnathv/slidify", 
                 "ramnathv/slidifyLibraries", "nhejazi/nima",
                 "ecpolley/SuperLearner", "ledell/subsemble",
                 "thomasp85/ggforce", "thomasp85/ggraph",
                 "dgrtwo/gganimate", "jennybc/googlesheets",
                 "jimhester/covr", "ramnathv/htmlwidgets")

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
devtools::install_github(github_pkgs)

# add packages for the R kernel in Jupyter
install.packages(c("repr", "pbdZMQ"))
devtools::install_github("IRkernel/IRdisplay")
devtools::install_github("IRkernel/IRkernel")
IRkernel::installspec(user = FALSE)

# add H2O on OSX only (Java required => not Chromebook Xubuntu friendly)
if ( Sys.info()['sysname'] == "Darwin" ) {
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
