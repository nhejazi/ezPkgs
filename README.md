# myPkgLib

> Package libraries and setup scripts for R, Python, Julia,
> Atom, and more...

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

## Preliminaries

__N.B.__, for these scripts to work as intended, _base installations of these
tools must be performed in advance:_

1. For macOS (or, Mac OS X) setup:
    [nhejazi/macOS-fresh](https://github.com/nhejazi/macOS-fresh)
2. For Linux Ubuntu (14.04+) setup:
    [nhejazi/ubuntu-fresh](https://github.com/nhejazi/ubuntu-fresh)

---

## Directions/Roadmap

To set up useful package libraries for Python, Julia, R, and the Atom editor,
the following order of steps is recommended:

**_run as root_ on Linux (Debian/Ubuntu) by adding prefix `sudo`**

1. Julia v4.3+: `julia install_juliapkgs.jl`
2. Python v3.4+: `python3 install_pypkgs.py`
3. Python v2.7+: `python2 install_pypkgs.py`
4. R v3.2+: `Rscript -e install_rpkgs.R` (or in an R session)
5. Atom editor v1.5+: `sh install_atompkgs.sh` (uses Atom `apm`)

__N.B.__, to install packages in R, it is best to avoid permissions issues by
running the install script interactively in an R session started from the
terminal (i.e., using `R CMD BATCH` is __not__ recommended). `Rscript` seems to
work well (as of 15 June 2016), but this functionality has not yet been verified
to be reliable.

## Supplementary Tools

1. Set up Jupyter kernels for R, Julia, Python, Torch, etc., manually using the
    instructions in the file `notes_jupyter.md`. _Note that Jupyter kernels for
    R, Python3, and Julia are set up in the individual language-specific install
    scripts_. The notes in `notes_jupyter.md` are updated semi-regularly to
    facilitate installation of other kernels (e.g., Python2, Torch, etc.).

2. Download and install the pythonic [Xonsh
    shell](https://github.com/xonsh/xonsh) by following these instructions [for
    Linux](http://xon.sh/linux.html) or [for macOS](http://xon.sh/osx.html).
    Note that setup of xonsh and
    [gitsome](https://github.com/donnemartin/gitsome) are performed within
    `install_pypkgs.py` for Python v.3.3+; these links are kept here merely for
    reference.

---

## License

&copy; 2016 [Nima Hejazi](http://nimahejazi.org)

This repository is licensed under the MIT license. See `LICENSE` for details.
