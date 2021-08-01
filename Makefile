.PHONY: proposal.pdf all clean

all: proposal.pdf

%.tex: %.raw
		./raw2tex $< > $@

%.tex: %.dat
		./dat2tex $< > $@

proposal.pdf: proposal.tex
		latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make proposal.tex

clean:
		latexmk -CA
