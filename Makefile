.PHONY : all
all: julia rstats py3 py2 atom

py2:
	python2 pypkgs.py

py3:
	python3 pypkgs.py

rstats:
	Rscript -e rpkgs.R

julia:
	julia juliapkgs.jl

atom:
	sh atompkgs.sh
