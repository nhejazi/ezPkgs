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
essential = ('ipython', 'Pillow', 'virtualenv', 'nose', 'pylint', 'numpy')

core = ('matplotlib', 'pandas', 'numba', 'scipy', 'scikit-learn', 'seaborn',
        'statsmodels', 'pymc', 'pylab', 'sympy', 'nltk', 'q', 'snakeviz',
        'networkx', 'tensorflow', 'keras', 'torchvision', 'altair', 'ggplot',
        'plotly', 'bokeh', 'mlxtend', 'csvkit', 'dask', 'distributed')

extra = ('jupyter', 'jupyterlab', 'jupyter_kernel_gateway', 'jedi', 'yapf',
         'awscli', 'neovim', 'gitless', 'xonsh', 'gitsome', 'rtichoke')


if __name__ == '__main__':
    # install only bare minimum on all Python versions
    install(essential)
    upgrade(essential)

    # install full suite of tools on Python v.3.5+ only
    if sys.version_info > (3, 5):
        install(core)
        install(extra)
        upgrade(core)
        upgrade(extra)

