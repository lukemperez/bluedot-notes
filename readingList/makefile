SRC    := $(filter-out README.md, $(wildcard *.md))
PDFS   := $(patsubst %.md,%.md.pdf,$(SRC))
FILTER := fullcite.lua
BIB    := BlueDot.bib
CSL    := $(HOME)/.pandoc/csl/chicago-author-date.csl

PREFIX = $(HOME)/.pandoc/md

# Make Blue Dot Readings into PDF

.PHONY: all clean rebuild

all: $(PDFS)

%.md.pdf: %.md $(FILTER) $(BIB) $(CSL)
	pandoc $< \
	--pdf-engine=xelatex \
	--bibliography=$(BIB) \
	--csl=$(CSL) \
	--filter pandoc-crossref \
	--lua-filter=$(FILTER) \
	--citeproc \
	-s -o $@ && open $@

clean:
	rm -rf *.pdf *.html *.log *.aux

rebuild:
	$(MAKE) clean
	$(MAKE) all