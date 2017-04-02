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
essentials = ('ipython', 'Pillow', 'virtualenv', 'nose', 'pylint', 'numpy',
              'matplotlib')

stat_core = ('pandas', 'scipy', 'scikit-learn', 'statsmodels', 'seaborn',
             'pymc', 'pylab', 'sympy', 'nltk', 'q', 'snakeviz', 'networkx')

extras = ('altair', 'ggplot', 'plotly', 'bokeh', 'mlxtend', 'csvkit',
          'biopython', 'nibabel', 'nipy')

py3only = ('jupyter', 'jupyterthemes', 'jupyter_kernel_gateway', 'jedi', 'yapf',
           'awscli', 'neovim', 'gitless', 'xonsh[ptk,pygments]', 'gitsome')

if __name__ == '__main__':
    # install only bare minimum on all Python versions
    install(essentials)
    upgrade(essentials)

    # install full suite of tools on Python v.3.5+ only
    if sys.version_info > (3, 5):
        install(stat_core)
        install(py3only)
        install(extras)
        upgrade(stat_core)
        upgrade(py3only)
        upgrade(extras)
