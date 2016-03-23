import pip

def install(packages):
    for x in range(len(packages)):
        pip.main(['install',packages[x]])

# Example
core = ('ipython','Pillow','virtualenv','nose','notebook','jupyter','pylint','xonsh')
basesci = ('numpy','scipy','pandas','scikit-learn','matplotlib','seaborn','plotly')
basemath = ('nltk','sympy','q','snakeviz','networkx','cloud')
internet = ('awscli','html5lib','cssselect','pyquery','lxml','BeautifulSoup')
otherstuff = ('Flask','Django','tornado','rdflib','SPARQLWrapper')
neurosci = ('nibabel','nipy','nitime','nilearn')

if __name__ == '__main__':
    install(core)
    install(basesci)
    install(basemath)
    install(internet)
    install(otherstuff)
    install(neurosci)
