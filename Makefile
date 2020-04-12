OUTNAME=mynotes
CONTENTFILE=content
MAINFILE=main

.PHONY: tex pdf all clean $(OUTNAME).pdf

all: tex pdf clean

tex:
	@ pandoc src/$(CONTENTFILE).md -o src/$(CONTENTFILE).tex

pdf: src/$(MAINFILE).tex
	@ latexmk -quiet -pdf -pdflatex="pdflatex -interaction=nonstopmode" -cd -outdir=../pdf -use-make src/$(MAINFILE).tex && \
		mv pdf/main.pdf pdf/$(OUTNAME).pdf

clean:
	@ latexmk -quiet -c -cd -outdir=../pdf src/$(MAINFILE).tex; \
		rm pdf/*.aux; rm -rf src/$(CONTENTFILE).tex
