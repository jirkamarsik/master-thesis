all: thesis.pdf deploy

deploy: thesis.pdf
	cp thesis.pdf ~/Dropbox/Public/rapport.pdf

front-page.pdf: front-page.tex
	pdflatex $<

thesis.pdf: thesis.tex motivation.tex acg.tex ig.tex resume.tex\
            outline.tex abstract.tex implementation.tex constraints.tex\
            gacg.tex conclusion.tex acknowledgments.tex\
            images/*.pdf front-page.pdf diagrams/*.dot biblio.bib
	make -C diagrams all
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc
	make -C diagrams clean
