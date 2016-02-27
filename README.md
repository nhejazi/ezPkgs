# getPkgs ~ _easy package setup for (my) core tools_

To set up useful package libraries for Python, Julia, R, and the Atom editor, use the following:

1. for Atom v1.5+: `sh _atomSetup.sh` (uses Atom's `apm`)
2. for R v3.2+: `R CMD BATCH _rSetup.R _rSetup.Rout; rm _rSetup.Rout`
3. for Python v2.7+: `python _pythonSetup.py` (to update packages, use `python _pythonUpdate.py`)
4. for Python v3.4+: `python3 _pythonSetup.py` (to update packages, use `python3 _pythonUpdate.py`)
5. for Julia v4.3+: `julia _juliaSetup.jl`
6. download and install the [Xonsh shell](https://github.com/scopatz/xonsh.git).

N.B., for these scripts to work as intended, _base installations of these tools must be performed in advance._
