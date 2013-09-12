deploy: abstract.pdf paper.pdf
	cp abstract.pdf ~/Dropbox/Public/abstract.pdf
	cp paper.pdf ~/Dropbox/Public/lenls.pdf

abstract.pdf: abstract.tex
	pdflatex abstract.tex
	bibtex abstract.aux
	pdflatex abstract.tex
	pdflatex abstract.tex

paper.pdf: paper.tex
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc
