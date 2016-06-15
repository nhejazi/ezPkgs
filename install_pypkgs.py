import pip, sys

def install(packages):
    for x in range(len(packages)):
        pip.main(['install',packages[x]])
        
def upgrade(packages):
    for x in range(len(packages)):
        pip.main(['install','--upgrade',packages[x]])
        
# Example
core = ('ipython','Pillow','virtualenv','nose','pylint','neovim',
        'awscli','StarCluster')
stat = ('numpy','scipy','pandas','matplotlib','seaborn','plotly',
        'scikit-learn','statsmodels','feather','bashplotlib',
        'ggplot')
math = ('nltk','sympy','q','snakeviz','networkx','cloud')
biol = ('biopython','nibabel','nipy','nitime','nilearn')

if sys.version_info > (3, 3):
    shell = ('xonsh','gitsome')
    
if sys.version_info > (3, 1):
    jupyter = ('jupyter','notebook','ipykernel')
    
if __name__ == '__main__':
    # only install/upgrade in Python v3.3+
    if sys.version_info > (3, 1):
        install(jupyter)
        upgrade(jupyter)
    if sys.version_info > (3, 3):
        install(shell)
        upgrade(shell)
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
