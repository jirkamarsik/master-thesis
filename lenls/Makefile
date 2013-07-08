deploy: abstract.pdf
	cp abstract.pdf ~/Dropbox/Public/abstract.pdf

abstract.pdf: abstract.tex
	pdflatex abstract.tex
	bibtex abstract.aux
	pdflatex abstract.tex
	pdflatex abstract.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc
