LATEXMK = latexmk
LATEXMKFLAGS = -xelatex

.PHONY: all ja en clean distclean

all: ja en

ja:
	$(LATEXMK) $(LATEXMKFLAGS) byo-ise-ja.tex

en:
	$(LATEXMK) $(LATEXMKFLAGS) byo-ise-en.tex

clean:
	$(LATEXMK) -c byo-ise-ja.tex
	$(LATEXMK) -c byo-ise-en.tex

distclean:
	$(LATEXMK) -C byo-ise-ja.tex
	$(LATEXMK) -C byo-ise-en.tex
