import pip

def upgrade(packages):
    for x in range(len(packages)):
        pip.main(['install','--upgrade',packages[x]])

# Package groupings
core = ('ipython','Pillow','virtualenv','nose','pylint','jupyter',
        'notebook','xonsh','neovim','awscli','StarCluster')
stat = ('numpy','scipy','pandas','matplotlib','seaborn','plotly',
        'scikit-learn','statsmodels')
math = ('nltk','sympy','q','snakeviz','networkx','cloud')
misc = ('html5lib','cssselect','pyquery','lxml','BeautifulSoup',
        'Flask','Django','tornado','rdflib','SPARQLWrapper')
biol = ('nibabel','nipy','nitime','nilearn')

if __name__ == '__main__':
    upgrade(core)
    upgrade(stat)
    upgrade(math)
    upgrade(misc)
    upgrade(biol)
