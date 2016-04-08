# ezPkgs
> Package setup for R, Julia, Python, Jupyter kernels, etc., made Eazy

To set up useful package libraries for Python, Julia, R, and the Atom 
editor, use the following:

1. Julia v4.3+: `julia install_juliapkgs.jl`
2. R v3.2+: `R CMD BATCH install_rpkgs.R install_rpkgs.Rout`
3. Python v3.4+: `python3 install_pypkgs.py` (to update packages, use 
   `python3 update_pypkgs.py`)
4. Python v2.7+: `python2 install_pypkgs.py` (to update packages, use 
   `python2 update_pypkgs.py`)
5. Atom editor v1.5+: `sh install_atompkgs.sh` (uses Atom `apm`)

_Supplementary_:

1. Set up Jupyter kernels for R, Julia, Python, Torch, etc. manually using 
   the instructions in `jupyter_notes.md`.
2. Download and install the pythonic [Xonsh 
   shell](https://github.com/scopatz/xonsh.git) by following the instructions 
   provided.

N.B., for these scripts to work as intended, _base installations of these tools 
must be performed in advance:_ 
For OS X setup, see [nhejazi/freshOSX](https://github.com/nhejazi/freshOSX); 
or, for Linux Ubuntu setup, see 
[nhejazi/freshUbuntu](https://github.com/nhejazi/freshUbuntu).

---

## License

&copy; 2016 Nima Hejazi

This repository is licensed under the MIT license. See `LICENSE` for details.
