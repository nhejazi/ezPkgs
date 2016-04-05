import pip

def upgrade(packages):
    for x in range(len(packages)):
        pip.main(['install','--upgrade',packages[x]])

# Example
core = ('ipython','Pillow','virtualenv','nose','pylint','jupyter',
        'notebook','xonsh','neovim')
stat = ('numpy','scipy','pandas','scikit-learn','matplotlib','seaborn',
        'plotly','statsmodels')
math = ('nltk','sympy','q','snakeviz','networkx','cloud')
web = ('awscli','html5lib','cssselect','pyquery','lxml','BeautifulSoup')
misc = ('Flask','Django','tornado','rdflib','SPARQLWrapper')
neuro = ('nibabel','nipy','nitime','nilearn')

if __name__ == '__main__':
    upgrade(core)
    upgrade(stat)
    upgrade(math)
    upgrade(web)
    upgrade(misc)
    upgrade(neuro)
