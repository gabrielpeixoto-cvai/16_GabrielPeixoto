# This is a fast and simple tex file containing just the main text
FAST_TARGET=fast
# This is a full text containing all sheets
FINAL_TARGET=gabrielPeixoto_tcc

all: $(FINAL_TARGET).tex
	pdflatex $(FINAL_TARGET)
	bibtex $(FINAL_TARGET)
	pdflatex $(FINAL_TARGET)
	pdflatex $(FINAL_TARGET)
	#cp ufpa_tcc.pdf tmp.pdf
#	latex $(FINAL_TARGET)
#	bibtex $(FINAL_TARGET)
#	latex $(FINAL_TARGET)
#	dvipdf $(FINAL_TARGET)

fast: $(FAST_TARGET).tex
	latex $(FAST_TARGET)
	bibtex $(FAST_TARGET)
	latex $(FAST_TARGET)
	dvipdf $(FAST_TARGET)

view: all
	okular $(TARGET).pdf

clean:
	rm -f *.aux *.log *.lot *.lof *.toc *.dvi *.bbl *.blg *.out
	rm -f Figs/*.pdf
	rm -f Figs/*/*.pdf

