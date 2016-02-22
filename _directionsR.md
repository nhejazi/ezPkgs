# install R packages, and R kernel for Jupyter
R CMD BATCH _setupR.R

in new terminal session:
`jupyter kernelspec install --replace --name ir --user /Library/Frameworks/R.framework/Versions/3.1/Resources/library/IRkernel/kernelspec`
