import pip, sys

def install(packages):
    for x in range(len(packages)):
        pip.main(['install',packages[x]])
        
def upgrade(packages):
    for x in range(len(packages)):
        pip.main(['install','--upgrade',packages[x]])
        
# Example
core = ('ipython','Pillow','virtualenv','nose','pylint','neovim',
        'awscli','StarCluster','ipykernel')
stat = ('numpy','scipy','pandas','matplotlib','seaborn','plotly',
        'scikit-learn','statsmodels','feather')
math = ('nltk','sympy','q','snakeviz','networkx','cloud')
biol = ('biopython','nibabel','nipy','nitime','nilearn')

if sys.version_info > (3, 1):
    notpy2 = ('jupyter','notebook','xonsh')

if __name__ == '__main__':
    # only install/upgrade in Python v3.1+
    if sys.version_info > (3, 1):
        install(notpy2)
        upgrade(notpy2)
    # pip install listed packages
    install(stat)
    install(math)
    install(biol)
    install(core)
    # pip upgrade listed packages
    upgrade(stat)
    upgrade(math)
    upgrade(biol)
    upgrade(core)
