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
              'matplotlib', 'pandas')

stat_core = ('scipy', 'scikit-learn', 'statsmodels', 'seaborn', 'pymc', 'pylab',
             'sympy', 'nltk', 'q', 'snakeviz', 'networkx')

extras = ('altair', 'ggplot', 'plotly', 'bokeh', 'mlxtend', 'csvkit',
          'biopython', 'nibabel', 'nipy')

py3only = ('jupyter', 'jupyterthemes', 'awscli', 'neovim', 'jedi', 'gitless',
           'xonsh[ptk,proctitle]', 'gitsome')

if __name__ == '__main__':
    # pip install listed packages
    install(essentials)
    install(stat_core)

    # pip upgrade listed packages
    upgrade(essentials)
    upgrade(stat_core)

    # essentials for use with Python v.3.3+
    if sys.version_info > (3, 4):
        install(py3only)
        install(extras)
        upgrade(py3only)
        upgrade(extras)
