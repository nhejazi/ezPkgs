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

core = ('ipython', 'Pillow', 'virtualenv', 'nose', 'pylint', 'neovim', 'awscli')

stat = ('numpy', 'scipy', 'pandas', 'matplotlib', 'seaborn', 'plotly', 'ggplot',
        'altair', 'scikit-learn', 'statsmodels', 'pymc', 'pylab')

math = ('nltk', 'sympy', 'q', 'snakeviz', 'networkx')

biol = ('biopython', 'nibabel', 'nipy', 'nitime', 'nilearn')

if sys.version_info > (3, 3):
    py3misc = ('jupyter', 'bashplotlib')

if sys.version_info > (3, 4):
    shells = ('xonsh', 'gitsome')


if __name__ == '__main__':
    # some modules now require python 3.3+ (Jupyter, etc.)
    if sys.version_info > (3, 3):
        install(py3misc); upgrade(py3misc)

    # the xonsh shell and gitsome cli require python 3.4+
    if sys.version_info > (3, 4):
        install(shells); upgrade(shells)

    # pip install listed packages
    install(stat); install(math)
    install(biol); install(core)

    # pip upgrade listed packages
    upgrade(stat); upgrade(math)
    upgrade(biol); upgrade(core)
