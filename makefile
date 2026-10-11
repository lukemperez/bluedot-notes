PDFS := $(patsubst %.md,%.md.pdf,$(wildcard *.md))

PREFIX = $(HOME)/.pandoc/md

# Make Blue Dot Readings into PDF

all : $(PDFS)

%.md.pdf : %.md
	pandoc $< \
	--pdf-engine=xelatex \
	-s -o $@  && open $@

clean:
	rm -rf *.pdf *.html *.log *.aux

rebuild:

	make clean && make
