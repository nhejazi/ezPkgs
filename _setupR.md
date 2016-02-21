# install R packages, and R kernel for Jupyter
R

install.packages(c('car','tidyr','dplyr','pryr','ggplot2','randomForest','SuperLearner','lme4','nlme','stringr','lubridate','ggvis','rgl','htmlwidgets','dygraphs','network3D','threeJS','googleVis','mgcv','multcomp','vcd','glmnet','survival','caret','shiny','xtable','pander','devtools','zoo','xts','quantmod','data.table','Rcpp','parallel','testthat','roxygen2','foreign','ade4','scatterplot3d','Rcurl','DBI','RMySQL','impute','fastICA','e1071','reshape2','RColorBrewer','neuralnet','nnet','RSNNS','clusterGeneration','tmle','ltmle','selectiveInference','htmltools','yaml','knitr','shiny','rmarkdown'))

source("http://www.bioconductor.org/biocLite.R")

biocLite()

biocLite(c("made4","hgu133plus2","hgu133plus2cdf","hgu133plus2probe","Heatplus","biomaRt","limma","affy","bsseq"))

install.packages(c('rzmq','repr','IRkernel','IRdisplay'),repos = c('http://irkernel.github.io/', getOption('repos')), type = 'source')

IRkernel::installspec(user = FALSE)

in new terminal session:
`jupyter kernelspec install --replace --name ir --user /Library/Frameworks/R.framework/Versions/3.1/Resources/library/IRkernel/kernelspec`
