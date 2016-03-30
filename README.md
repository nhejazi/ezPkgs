# ezPkgs
> Easy Package Setup for (My) Core Tools

To set up useful package libraries for Python, Julia, R, and the Atom editor, 
use the following:

1. for Atom v1.5+: `sh _atomSetup.sh` (uses Atom's `apm`)
2. for R v3.2+: `R CMD BATCH _rSetup.R _rSetup.Rout; rm _rSetup.Rout`
3. for Python v3.4+: `python3 _pythonSetup.py` (to update packages, use 
   `python3 _pythonUpdate.py`)
4. for Python v2.7+: `python2 _pythonSetup.py` (to update packages, use 
   `python2 _pythonUpdate.py`)
5. for Julia v4.3+: `julia _juliaSetup.jl`


_Supplementary_:

1. download and install the [Xonsh 
   shell](https://github.com/scopatz/xonsh.git) by following the instructions 
   provided.
2. set up Jupyter kernels for Python/Julia/R using instructions in 
   `_jupyterNotes.md`

N.B., for these scripts to work as intended, _base installations of these tools 
must be performed in advance._
