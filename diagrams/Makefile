SOURCES = $(wildcard *.dot)
PRODUCTS = $(SOURCES:.dot=.pdf)

all: $(PRODUCTS)

%.tex: %.dot
	dot2tex --texmode math --autosize --usepdflatex --crop --cache --straightedges $< -o $@

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.aux *.log *.pdf *.tex
