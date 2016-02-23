# getPkgs ~ _easy package setup for (my) core tools_

To set up useful package libraries for Python, Julia, R, and the Atom editor, use the following:

1. `sh _setupPython.sh` (uses `pip`)
2. `julia _setupJulia.jl`
3. `R CMD BATCH _setupR.R _setupR.Rout; rm _setupR.Rout`
4. `sh _setupAtom.sh` (uses `apm`)

to set up the R kernel for Jupyter notebooks, in a new terminal session: 

`jupyter kernelspec install --replace --name ir --user Library/Frameworks/R.framework/Versions/3.1/Resources/library/IRkernel/kernelspec`

N.B., for these scripts to work as intended, base installations of these tools must be performed in advance.
