deploy: abstract.pdf paper.pdf slides.pdf post-proc.pdf
	cp abstract.pdf ~/Dropbox/Public/abstract.pdf
	cp paper.pdf ~/Dropbox/Public/lenls.pdf
	cp slides.pdf ~/Dropbox/Public/lenls-slides.pdf

abstract.pdf: abstract.tex ../diagrams/*.dot ../biblio.bib
	make -C ../diagrams
	pdflatex abstract.tex
	bibtex abstract.aux
	pdflatex abstract.tex
	pdflatex abstract.tex

paper.pdf: paper.tex ../diagrams/*.dot ../biblio.bib
	make -C ../diagrams
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex

post-proc.pdf: post-proc.tex ../diagrams/*.dot ../biblio.bib
	make -C ../diagrams
	pdflatex post-proc.tex
	bibtex post-proc.aux
	pdflatex post-proc.tex
	pdflatex post-proc.tex

slides.pdf: slides.tex ../diagrams/*.dot ../biblio.bib
	make -C ../diagrams
	pdflatex slides.tex
	pdflatex slides.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc
