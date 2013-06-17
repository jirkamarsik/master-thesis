all: thesis.pdf deploy

deploy: thesis-with-front.pdf
	cp thesis-with-front.pdf ~/Dropbox/Public/rapport.pdf

front-page-alone.pdf: front-page-alone.tex
	pdflatex $<

thesis.pdf: thesis.tex motivation.tex acg.tex ig.tex front-page.tex\
            outline.tex abstract.tex implementation.tex constraints.tex\
            gacg.tex conclusion.tex acknowledgments.tex\
            images/*.pdf diagrams/*.dot biblio.bib
	make -C diagrams all
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex

thesis-with-front.pdf: front-page-alone.pdf thesis.pdf
	pdfjoin front-page-alone.pdf 1 thesis.pdf 2- -o thesis-with-front.pdf

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc
	make -C diagrams clean
