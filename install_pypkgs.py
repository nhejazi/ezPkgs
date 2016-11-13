import pip, sys

def getPkgs():
    inst_pkgs = pip.get_installed_distributions()
    inst_pkgs_list = sorted(["%s==%s" % (i.key, i.version) for i in inst_pkgs])
    inst_pkgs_noVer = [c.split("==") for c in inst_pkgs_list]
    inst_pkgs_tuple = tuple([c[0] for c in inst_pkgs_noVer])
    return(inst_pkgs_tuple)

def install(packages):
    # loop over packages
    for x in range(len(packages)):
        pip.main(['install',packages[x]])

def upgrade(packages):
    for x in range(len(packages)):
        pip.main(['install','--upgrade',packages[x]])

# Categorized list of packages for installation
inst_pkgs = getPkgs()  # currently installed packages

essentials = ('ipython', 'Pillow', 'virtualenv', 'nose', 'pylint')

stat_core = ('numpy', 'scipy', 'pandas', 'matplotlib', 'seaborn',
             'scikit-learn', 'statsmodels', 'pymc', 'pylab', 'nltk', 'sympy',
             'q', 'snakeviz', 'networkx')

extras = ('plotly', 'ggplot', 'altair', 'mlxtend', 'biopython', 'nibabel',
          'nipy')

py3only = ('jupyter', 'bashplotlib', 'awscli', 'neovim', 'jedi', 'xonsh',
           'gitsome')

if __name__ == '__main__':
    # pip install listed packages
    install(essentials); install(stat_core)

    # pip upgrade listed packages
    upgrade(essentials); upgrade(stat_core)

    # essentials that for use with Python3
    if sys.version_info > (3, 4):
        install(py3only); upgrade(py3only)
        install(extras); upgrade(extras)
