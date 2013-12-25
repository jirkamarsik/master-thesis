all: presentation.pdf short-presentation.pdf sjtu-presentation.pdf

short-presentation.pdf: short-presentation.tex ../diagrams/*.dot
	make -C ../diagrams
	pdflatex short-presentation.tex
	pdflatex short-presentation.tex

presentation.pdf: presentation.tex ../diagrams/*.dot
	make -C ../diagrams
	pdflatex presentation.tex
	pdflatex presentation.tex

sjtu-presentation.pdf: sjtu-presentation.tex ../diagrams/*.dot
	make -C ../diagrams
	pdflatex sjtu-presentation.tex
	pdflatex sjtu-presentation.tex

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc
	make -C ../diagrams clean
