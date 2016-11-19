# myPkgLib

[![MIT
license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Package libraries and setup scripts for R, Python, Julia,
> and Atom (editor)

---

## How Directions:

To set up package libraries for Python, Julia, R, and the Atom editor, the
following order of steps is recommended:

**_run as root_ on Linux Ubuntu by adding prefix `sudo`**

1. Julia: `julia juliapkgs.jl`
2. R: `Rscript -e rpkgs.R` (or in an R session)
3. Atom editor: `sh atompkgs.sh` (uses Atom `apm`)
4. Python v3.4+: `python3 pypkgs.py` (use `python3.5` on Ubuntu 14.04)
5. Python v2.7+: `python2 pypkgs.py` (use `python2.7` on Ubuntu 14.04)

__N.B.__, to install packages for R, it is best to avoid permissions issues by
running the install script interactively in an R session started from the
terminal (i.e., using `R CMD BATCH` is __not__ recommended). `Rscript` seems to
work well (as of 15 June 2016), but this functionality has not yet been verified
as reliable.

---

## Supplementary

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

## Notes

* On macOS, the "system Python" is Python 2.6.6 and is symlinked as `python`.
    After installation of newer versions of Python (via `brew`), Python 2.7.X is
    symlinked as `python2`, and Python 3.5.X is symlinked as `python3`. _This is
    current as of 27 August 2016._

* On Ubuntu Trusty Tahr (14.04), the "system Python" is Python 3.4.3 and is
    symlinked as `python3`. After installing newer Python versions (via [the
    deadsnakes PPA](https://launchpad.net/~fkrull/+archive/ubuntu/deadsnakes)),
    Python 3.5.X is symlinked as `python3.5`, while Python 2.7.X is symlinked as
    `Python2.7`. _This is current as of 27 August 2016._

---

## Related

__N.B.__, for these scripts to work as intended, _base installations of the
relevant tools must be performed in advance:_

1. For macOS (or, Mac OS X) setup:
    [nhejazi/macOS-fresh](https://github.com/nhejazi/macOS-fresh)
2. For Linux Ubuntu (14.04+) setup:
    [nhejazi/ubuntu-fresh](https://github.com/nhejazi/ubuntu-fresh)

---

## License

&copy; 2016 [Nima Hejazi](http://nimahejazi.org)

The contents of this repository are distributed under the MIT license. See file
`LICENSE` for details.
