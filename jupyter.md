# Jupyter kernels for scientific computing

> Set up Jupyter kernels for languages common in statistics and data science
> (e.g., R, Julia, Python 3, Python 2)

---

## Multiple kernels for Jupyter notebooks
- After installation, all of the desired kernels can be accessed from the
    browser:

  * `jupyter notebook` (point browser to `http://localhost:8888/` if using
      `jupyter notebook --no-browser`)
  * After the browser launches, select a kernel from the drop down menu in the
      top right.

- Available Jupyter kernels may also be accessed via consoles from the command
    line:

  * `jupyter qtconsole --kernel=KERNEL` or `jupyter console --kernel=KERNEL`,
      replacing KERNEL with the name of the kernel for the desired language
      (_e.g._, `ir` for the R language)
  * on macOS, the list of kernels should appear in `~/Library/Jupyter/kernels`

---

## [Kernels for Python 2 vs. Python 3](https://ipython.readthedocs.org/en/latest/install/kernel_install.html)

- Set up Jupyter and the notebook interface by running`pip3 install jupyter`.
  (If you want to set this up in Python2, use `pip2` or `pip` instead; just
  make sure to NOT do both).

- Setting up equivalently functional kernels for Python2 and Python3 requires
    a bit of extra work (this has to do with Jupyter internally supporting both
    Python2 and Python3, which will _likely change in the future_). Here, assume
    that Jupyter has been set up for Python3 by runing `pip3 install jupyter`:

  *  To set up a functional ipython kernel for Python2:
     ```bash
     python2 -m pip install ipykernel
     python2 -m ipykernel install --user
     ```

  *  Use of the above will allow access to kernels for Python2 and Python3 in
      the same Jupyter notebook environment.

- _(Update 2016 Apr.):_ Instructions given for setting up the python kernels
    are adapted from [this issue on
    GitHub](https://github.com/jupyter/jupyter/issues/52).

- _(Update 2016 Jun.):_ Instructions for setting up multiple Python kernels have
    been added to the [documentation
    here](https://ipython.readthedocs.io/en/stable/install/kernel_install.html).
 
- __(Error 2017 Jan.):__ The move from Python 3.5X to 3.6X caused Jupyter kernels
    for Python3 and Python2 to break. The easiest workaround to restore kernel
    functionality appears to be re-running the kernel installation lines:
    ```bash
    # restore Python2 kernel
    python2 -m pip install ipykernel
    python2 -m ipykernel install --user
     
    # install Python3 kernel (even though Jupyter installed via pip3...)
    python3 -m pip install ipykernel
    python3 -m ipykernel install --user
    ```

---

## [R kernel for Jupyter notebooks](http://irkernel.github.io/installation/)

- To install the appropriate dependencies, within R:
  ```r
  install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ',
                   'devtools', 'uuid', 'digest'))
  devtools::install_github("IRkernel/IRkernel")
  IRkernel::installspec(user = FALSE)
  ```
N.B., on macOS this must be done within an R session started from the terminal.

- To update the IRkernel package, within R, run `devtools::install_github(...)`
    lines again.

---

## [Julia kernel for Jupyter notebooks](https://github.com/JuliaLang/IJulia.jl)

- To install, within Julia, the following will suffice:
  ```Julia
  Pkg.add("IJulia")
  ```

- To update the IJulia kernel, the following steps are necessary:
  ```Julia
  Pkg.update()
  Pkg.build("IJulia")
  ```

- To start up the Jupyter notebook from within Julia:
  ```Julia
  using IJulia
  notebook()
  ```

---

## [Torch kernel for Jupyter notebooks](https://github.com/facebook/iTorch)

- Torch is built off of Lua; to install from the command line [see this
    link](https://github.com/torch/torch7/wiki/Cheatsheet#installing-and-running-torch).

- Add the iTorch kernel to Jupyter by using the following:
  ```bash
  git clone https://github.com/facebook/iTorch.git
  cd iTorch
  luarocks make
  ```
