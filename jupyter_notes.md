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

- Available Jupyter kernels may also be accessed via other consoles from the 
  command line:

  * `jupyter qtconsole --kernel=X` or `jupyter console --kernel=X`
  * for X in {ir, julia-ver, python2, python3} to access kernels for R, 
    Julia, Python2, and Python3, respectively.
  * on OS X, the list of kernels should appear in `~/Library/Jupyter/kernels`
  
## [Python 2 vs. 3: A Problem of Multiple Kernels](https://ipython.readthedocs.org/en/latest/install/kernel_install.html)

- Set up Jupyter and the notebook interface by running`pip3 install jupyter` and
  `pip3 install notebook` (repeat this step using `pip2` to set up in Python2).

- Setting up an equivalently functional kernels for Python2 and Python3 requires
  a bit of extra work (this has to do with Jupyter internally supporting both
  Python2 and Python3, which will _likely change in the future_).

  1. To set up the ipython kernel for Python3:
     * `pip3 install ipykernel`
     * `python3 -m ipykernel.kernelspec --user`

  2. To set up the ipython kernel for Python2:
     * `pip2 install ipykernel`
     * `python2 -m ipykernel.kernelspec --user`

- __The instructions given for setting up the python kernels are adapted from 
  [this GitHub issue](https://github.com/jupyter/jupyter/issues/52).__

## [An R kernel for Jupyter notebooks](http://irkernel.github.io/installation/)

- To install the appropriate dependencies, within R:

  1. `install.packages(c('rzmq','repr','IRkernel','IRdisplay'), 
     repos = c('http://irkernel.github.io/', getOption('repos')))`
  2. `IRkernel::installspec()` (n.b., on Mac OSX this must be done within an R 
     session started from the terminal.)

- To update the IRkernel package, within R:

  * `update.packages(repos = c('http://irkernel.github.io/', 
    getOption('repos')))`

## [A Julia kernel for Jupyter notebooks](https://github.com/JuliaLang/IJulia.jl)

- To install, within Julia, the following will suffice:

  * `Pkg.add("IJulia")`

- To update the IJulia kernel, the following steps are necessary:

  1. `Pkg.update()`
  2. `Pkg.build("IJulia")`

- To start up the Jupyter notebook from within Julia:

  1. `using IJulia`
  2. `notebook()`

## [A Torch kernel for Jupyter notebooks](https://github.com/facebook/iTorch)

- Torch is built off of Lua; to install from the command line [see here](https://github.com/torch/torch7/wiki/Cheatsheet#installing-and-running-torch):

- Add the iTorch kernel to Jupyter by using the following:
```bash
git clone https://github.com/facebook/iTorch.git
cd iTorch
luarocks make
```
