CO=thesis

all: $(CO).pdf

pdf: $(CO).pdf

$(CO).ps: $(CO).dvi
	dvips $(CO)

$(CO).pdf: clean
#        pdflatex $(CO)
#        bibtex $(CO)
	pdflatex $(CO)
	pdflatex $(CO)

$(CO).dvi: $(CO).tex $(CO).bib
#        latex $(CO)
#        bibtex $(CO)
	latex $(CO)
	latex $(CO)

clean:
	rm -f *.dvi *.log $(CO).blg $(CO).bbl $(CO).toc *.aux $(CO).out $(CO).lof *.514pk *.600pk *.tfm
# 	rm -f $(CO).pdf
	rm -f *~

pack:
	tar czvf bcthesis-325219.tar.gz *.tex *.cls *.mf *.clo *.bib *.bst ./fig/* ./cls/* Makefile