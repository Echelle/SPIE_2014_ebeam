all: SPIE_2014_ebeam.ps

%.ps: %.tex
	latex SPIE_2014_ebeam
	bibtex SPIE_2014_ebeam
	latex SPIE_2014_ebeam
	latex SPIE_2014_ebeam
	dvips SPIE_2014_ebeam.dvi -P pdf
	mv SPIE_2014_ebeam.ps final/
	mv SPIE_2014_ebeam.tex final/
	rm *.bbl
	rm *.aux
	rm *.log
	rm *.blg
	rm *.dvi
	latexdiff-so old/SPIE_20140214_MGS.tex final/SPIE_2014_ebeam.tex > SPIE_2014_ebeam.tex
	latex SPIE_2014_ebeam
	bibtex SPIE_2014_ebeam
	latex SPIE_2014_ebeam
	latex SPIE_2014_ebeam
	dvips SPIE_2014_ebeam.dvi -P pdf	
	rm *.bbl
	rm *.aux
	rm *.log
	rm *.blg
	rm *.dvi
	mv SPIE_2014_ebeam.ps final/diff.ps
	cp final/SPIE_2014_ebeam.tex .
	
