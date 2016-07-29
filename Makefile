py2:
			python2 install_pypkgs.py
			python install pypkgs.py
			pip2 install -r install_py2.txt
			pip2 install --upgrade -r install_py2.txt

py3:
			python3 install_pypkgs.py
			pip3 install -r install_py3.txt
			pip3 install --upgrade -r install_py3.txt

rstats:
			Rscript -e install_rpkgs.R

julia:
			julia install_juliapkgs.jl

atom:
			sh install_atompkgs.sh

all: julia rstats py3 py2 atom
