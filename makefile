STORYBOARD = storyboard 
NARRATION  = narration
SRC        = *.json
LATEX      = pdflatex

all: $(STORYBOARD).pdf

$(STORYBOARD).pdf: $(SRC)
	./miniboard
	texcount.pl narration_frames.tex | grep "Words in text:" > count.tex
	date > date.tex
	$(LATEX) $(STORYBOARD).tex
	$(LATEX) $(NARRATION).tex
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.toc *.swp \
	    frames.tex count.tex narration_frames.tex count.tex date.tex \
	    narration.tex storyboard.tex

clean:
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.toc *.swp *.pdf *.tex
