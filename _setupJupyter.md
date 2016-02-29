# Instructions for set up and use of Jupyter kernels for Python2, Python3, R, Julia

## Using the Jupyter notebook with multiple kernels
- After installation of the desired kernels, all can be accessed via the browser:
  1. `jupyter notebook`
  2. After the browser launches, select a kernel from the drop down menu in the top right.
- Available Jupyter kernels may also be accessed via other consoles from the command line:
  1. `jupyter qtconsole --kernel=X`
  2. `jupyter console --kernel=X`
  
  where X = ir (for R), X = ijulia (for Julia, X = ipykernel (for Python2), X = ipykernel3 (for Python3).

## [Python 2 vs. 3: A Problem of Multiple Kernels](https://ipython.readthedocs.org/en/latest/install/kernel_install.html)
- `pip3 install jupyter` creates a functional Python3 kernel for Jupyter
- Unfortunately, setting up an equivalently functional Python2 kernel takes a bit more work:
  1. `python -m pip install ipykernel`
  2. `python -m ipykernel install --user`
- The above adds a Python2 kernel when Jupyter's primary Python kernel is Python3
- Presumably, this can be adjusted such that a Python3 kernel would be set up if Python2 was main...

## [An R kernel for Jupyter notebooks](http://irkernel.github.io/installation/)
- To install the appropriate dependencies, within R:
  1. `install.packages(c('rzmq','repr','IRkernel','IRdisplay'), repos = c('http://irkernel.github.io/', getOption('repos')))`
  2. `IRkernel::installspec()`; note that on Mac OSX this must be used on an R session started from the terminal.
- To update the IRkernel package, within R:
  1.`update.packages(repos = c('http://irkernel.github.io/', getOption('repos')))`

## [A Julia kernel for Jupyter notebooks](https://github.com/JuliaLang/IJulia.jl)
- To install, within Julia, the following will suffice:
  1. `Pkg.add("IJulia")`

- To update the IJulia kernel, the following steps are necessary:
  1. `Pkg.update()`
  2. `Pkg.build("IJulia")`

- To start up the Jupyter notebook from within Julia:
  1. `using IJulia`
  2. `notebook()`
