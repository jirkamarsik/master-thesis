all: thesis.pdf deploy

deploy:
	cp thesis.pdf ~/Dropbox/Public/rapport.pdf

thesis.pdf: thesis.tex motivation.tex acg.tex ig.tex front-page.tex\
            outline.tex abstract.tex implementation.tex constraints.tex\
            gacg.tex conclusion.tex\
            images/*.pdf diagrams/*.dot biblio.bib
	make -C diagrams all
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc
	rm thesis.pdf
	make -C diagrams clean
