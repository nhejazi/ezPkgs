import sys
import pip


def install(packages):
    '''
    install packages from a list iteratively
    '''
    for pkg in range(len(packages)):
        pip.main(['install', packages[pkg]])


def upgrade(packages):
    '''
    upgrade packages from a list iteratively
    '''
    for pkg in range(len(packages)):
        pip.main(['install', '--upgrade', packages[pkg]])


# Categorized list of packages for installation
core = ('ipython', 'Pillow', 'virtualenv', 'pipenv', 'nose', 'pylint')

stats = ('numpy', 'matplotlib', 'pandas', 'numba', 'scipy', 'scikit-learn',
         'statsmodels', 'lifelines', 'pymc', 'pylab', 'sympy', 'nltk', 'q',
         'snakeviz', 'altair', 'ggplot', 'plotly', 'bokeh', 'seaborn',
         'mlxtend', 'csvkit', 'dask', 'distributed')

system = ('jupyter', 'jupyterlab', 'jupyter_kernel_gateway', 'jedi', 'yapf',
          'neovim', 'xonsh', 'rtichoke')


if __name__ == '__main__':
    # install only bare minimum on all Python versions
    install(core)
    upgrade(core)

    # install full suite of tools on Python v.3.5+ only
    if sys.version_info > (3, 5):
        install(stats)
        install(system)
        upgrade(stats)
        upgrade(system)

