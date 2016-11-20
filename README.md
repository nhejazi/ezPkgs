# myPkgLib

[![MIT
license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Package libraries and setup scripts for R, Python, Julia,
> and Atom (editor)

---

## Directions:

To set up package libraries for [R](https://www.r-project.org),
[Python](https://www.python.org), [Julia](http://julialang.org), and the [Atom
editor](https://atom.io), the following order of steps is recommended:

**On Ubuntu (Linux) _run as root_ by adding prefix `sudo`**

1. R: `Rscript -e rpkgs.R` (or in an R session)
2. Python v3.4+: `python3 pypkgs.py` (use `python3.5` on Ubuntu 14.04)
3. Python v2.7+: `python2 pypkgs.py` (use `python2.7` on Ubuntu 14.04)
4. Julia: `julia juliapkgs.jl`
5. Atom: `sh atompkgs.sh`

__N.B.__, to install packages for R, it is best to avoid permissions issues by
running the install script interactively in an R session started from the
terminal (_in particular, use of `R CMD BATCH` is **not** recommended_).
`Rscript` seems to work well (as of 15 June 2016), but this functionality has
not yet been verified as being completely reliable.

---

## _Caveat Emptor_

_The following information is current as of **27 August 2016** and should be
taken into account when following the recommended install procedure above._

* On macOS, the "system Python" is Python 2.6.6 and is symlinked as `python`.
    After installation of newer versions of Python (preferably, via
    [Homebrew](http://brew.sh)), Python 2.7.X is symlinked as `python2`, and
    Python 3.5.X is symlinked as `python3`.

* On Ubuntu Trusty Tahr (14.04), the "system Python" is Python 3.4.3 and is
    symlinked as `python3`. After installing newer Python versions (via [Felix
    Krull's "deadsnakes" PPA](https://launchpad.net/~fkrull/+archive/ubuntu/deadsnakes)),
    Python 3.5.X is symlinked as `python3.5`, while Python 2.7.X is symlinked as
    `Python2.7`.

---

## Supplementary Notes

1. Set up Jupyter kernels for R, Julia, Python, Torch, etc., manually using the
    instructions in the file `jupyter.md`. _Note that Jupyter kernels for R,
    Python3, and Julia are set up in the individual language-specific install
    scripts_. The file `jupyter.md` is updated semi-regularly to facilitate
    installation of other kernels (_e.g._, Python2, Torch, etc.).

2. Download and install the pythonic [Xonsh shell](http://xon.sh) by following
    these instructions [for Linux](http://xon.sh/linux.html) or [for
    macOS](http://xon.sh/osx.html). _Note:_
    [xonsh](https://github.com/xonsh/xonsh) and
    [gitsome](https://github.com/donnemartin/gitsome) are automatically
    installed for Python v.3.4+ via `pypkgs.py`.

---

## Related

__N.B.__, for these scripts to work as intended, _base installations of the
relevant tools must be performed in advance:_

1. Setup for _macOS_:
    __[nhejazi/macOS-fresh](https://github.com/nhejazi/macOS-fresh)__

2. Setup for _Ubuntu (14.04+)_:
    __[nhejazi/ubuntu-fresh](https://github.com/nhejazi/ubuntu-fresh)__

---

## License

&copy; 2016 [Nima Hejazi](http://nimahejazi.org)

The contents of this repository are distributed under the MIT license. See file
`LICENSE` for details.
