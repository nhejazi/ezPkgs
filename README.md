# myPkgLib

> Package libraries and setup scripts for R, Python, Julia,
> Atom, and more...

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

## Preliminaries

_N.B._, for these scripts to work as intended, _base installations of these
tools must be performed in advance:_ 

1. For OS X setup, see [nhejazi/freshOSX](https://github.com/nhejazi/freshOSX) 
2. For Linux Ubuntu setup, see [nhejazi/freshUbuntu](https://github.com/nhejazi/freshUbuntu)

## Directions/Roadmap

To set up useful package libraries for Python, Julia, R, and the Atom 
editor, the following workflow is recommended:

**_run as root_ on Linux (Debian/Ubuntu) by adding prefix `sudo`**

1. Julia v4.3+: `julia install_juliapkgs.jl`
2. Python v3.4+: `python3 install_pypkgs.py`
3. Python v2.7+: `python2 install_pypkgs.py`
4. R v3.2+: run `install_rpkgs.R` _interactively_ in an R session
5. Atom editor v1.5+: `sh install_atompkgs.sh` (uses Atom `apm`)

_N.B._, to install packages in R, it is best to avoid permissions issues
by running the install script interactively in an R session started from
the terminal (i.e., use of `R CMD BATCH` is __not__ recommended).

### Supplementary Tools

1. Download and install the pythonic [Xonsh 
   shell](https://github.com/xonsh/xonsh) by following these
   instructions [for Linux](http://xon.sh/linux.html) or [for
   OSX](http://xon.sh/osx.html).

2. Set up Jupyter kernels for R, Julia, Python, Torch, etc., manually
   using the instructions in `jupyter_notes.md`.

---

## License

&copy; 2016 Nima Hejazi

This repository is licensed under the MIT license. See `LICENSE` for details.
