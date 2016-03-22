# for CRAN packages
install.packages(c('car','tidyr','dplyr','pryr','ggplot2','randomForest',
                   'SuperLearner','lme4','nlme','stringr','lubridate','ggvis',
                   'rgl','htmlwidgets','dygraphs','network3D','threeJS',
                   'googleVis','mgcv','multcomp','vcd','glmnet','survival',
                   'caret','shiny','xtable','pander','devtools','zoo','xts',
                   'quantmod','data.table','Rcpp','parallel','testthat',
                   'roxygen2','foreign','ade4','scatterplot3d','Rcurl','DBI',
                   'RMySQL','impute','fastICA','e1071','reshape2','lintr',
                   'RColorBrewer','neuralnet','nnet','clusterGeneration',
                   'RSNNS','tmle','ltmle','selectiveInference','knitr',
                   'htmltools','yaml','shiny','rmarkdown','png','stringi',
                   'gridExtra','rversions'),
                 repos='https://cran.cnr.berkeley.edu/')

# for GitHub packages
devtools::install_github("hadley/staticdocs")
devtools::install_github(c("ramnathv/slidify","ramnathv/slidifyLibraries"))
devtools::install_github("nhejazi/nima")

# for Bioconductor packages
source("http://www.bioconductor.org/biocLite.R")
biocLite()
biocLite(c("made4","hgu133plus2cdf","hgu133plus2probe","gwascat",
           "Heatplus","biomaRt","limma","affy","bsseq","ggbio",
           "TxDb.Hsapiens.UCSC.hg18.knownGene","rtracklayer"))

# for Jupyter R kernel (not working yet...)
install.packages(c('rzmq','repr','IRkernel','IRdisplay'),
                 repos = c('http://irkernel.github.io/', getOption('repos')), 
                 type = 'source')
IRkernel::installspec(user = FALSE)
