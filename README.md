# getPkgs ~ _easy package setup for (my) core tools_

To set up useful package libraries for Python, Julia, R, and the Atom editor, use the following:

1. `sh _setupAtom.sh` (uses Atom's `apm`)
2. `R CMD BATCH _setupR.R _setupR.Rout; rm _setupR.Rout`
3. `python _pythonSetup.py` (to update packages, use `python _pythonUpdate.py`
4. `python3 _pythonSetup.py` (to update packages, use `python3 _pythonUpdate.py`
5. `julia _setupJulia.jl`

N.B., for these scripts to work as intended, base installations of these tools must be performed in advance.
