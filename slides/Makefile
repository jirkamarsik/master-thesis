presentation.pdf: presentation.tex ../diagrams/*.dot
	make -C ../diagrams
	pdflatex presentation.tex
	pdflatex presentation.tex

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc
	make -C ../diagrams clean
