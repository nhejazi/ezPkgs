# Jupyter kernels for statistics and data science

> Setting up Jupyter kernels for the core languages of data analysis/science
> (with Python2, Python3, R, Julia, Torch)

## Using the Jupyter notebook with multiple kernels
- After installation of the desired kernels, all can be accessed via the 
  browser:

  * `jupyter notebook` (point browser to `http://localhost:8888/` if using
    `jupyter notebook --no-browser`)
  * After the browser launches, select a kernel from the drop down menu in the 
    top right.

- Available Jupyter kernels may also be accessed via consoles from the command
  line:

  * `jupyter qtconsole --kernel=KERNEL` or `jupyter console --kernel=KERNEL`
  * for KERNEL in {ir, julia-VER, python2, python3} to access kernels for R, 
    Julia, Python2, and Python3, respectively.
  * on OS X, the list of kernels should appear in `~/Library/Jupyter/kernels`
  
## [Python 2 vs. 3: A Problem of Multiple Kernels](https://ipython.readthedocs.org/en/latest/install/kernel_install.html)

- Set up Jupyter and the notebook interface by running`pip3 install jupyter`.
  (If you want to set this up in Python2, use `pip2` or `pip` instead; just
  make sure to NOT DO both; also, set up with Python2 is NOT recommended).

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

- _These instructions given for setting up the python kernels are adapted from 
  [this GitHub issue](https://github.com/jupyter/jupyter/issues/52)._ (2016 Apr)
- _Instructions for setting up multiple Python kernels for Jupyter have been
  add to the [documentation here](https://ipython.readthedocs.io/en/stable/install/kernel_install.html)._ (2016 Jun)

## [An R kernel for Jupyter notebooks](http://irkernel.github.io/installation/)

- To install the appropriate dependencies, within R:
  ```r
  install.packages(c('repr', 'pbdZMQ', 'devtools')) # repr is already on CRAN
  devtools::install_github('IRkernel/IRdisplay')
  devtools::install_github('IRkernel/IRkernel')
  IRkernel::installspec(user = FALSE)
  ```
N.B., on Mac OSX this must be done within an R session started from the terminal.

- To update the IRkernel package, within R, run `devtools::install_github(...)`
  lines again.

## [A Julia kernel for Jupyter notebooks](https://github.com/JuliaLang/IJulia.jl)

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

## [A Torch kernel for Jupyter notebooks](https://github.com/facebook/iTorch)

- Torch is built off of Lua; to install from the command line [see  here](https://github.com/torch/torch7/wiki/Cheatsheet#installing-and-running-torch).

- Add the iTorch kernel to Jupyter by using the following:
  ```bash
  git clone https://github.com/facebook/iTorch.git
  cd iTorch
  luarocks make
  ```
