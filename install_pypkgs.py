import pip, sys

def install(packages):
    for x in range(len(packages)):
        pip.main(['install',packages[x]])
        
def upgrade(packages):
    for x in range(len(packages)):
        pip.main(['install','--upgrade',packages[x]])
        
# Example
core = ('ipython','Pillow','virtualenv','nose','pylint','neovim',
        'awscli','StarCluster','jupyter','notebook')
stat = ('numpy','scipy','pandas','matplotlib','seaborn','plotly',
        'scikit-learn','statsmodels','feather')
math = ('nltk','sympy','q','snakeviz','networkx','cloud')
biol = ('nibabel','nipy','nitime','nilearn')

if sys.version_info > (3, 4):
    not2 = ('xonsh')

if __name__ == '__main__':
    install(stat)
    install(math)
    install(biol)
    install(core)
    # upgrade listed packages
    upgrade(stat)
    upgrade(math)
    upgrade(biol)
    upgrade(core)
    # only install/upgrade in Python v3.4+
    if sys.version_info > (3, 4):
        install(not2)
        upgrade(not2)
