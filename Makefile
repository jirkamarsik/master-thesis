all: thesis.pdf deploy

deploy:
	cp thesis.pdf ~/Dropbox/Public/rapport.pdf

thesis.pdf: thesis.tex motivation.tex acg.tex ig.tex my-work-rewritten.tex\
            the-last-part.tex\
            ig-adj.pdf ig-eptds.pdf ig-neg.pdf ig-parse.pdf ig-partial.pdf\
            ig-que.pdf parse-aucun.pdf
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc
