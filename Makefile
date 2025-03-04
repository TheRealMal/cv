TARGET=CV

.PHONY: install-pandoc md pdf

install:
	brew install pandoc
	brew install texlive

md:
	pandoc -s $(TARGET).tex -o README.md

pdf:
	pdflatex $(TARGET).tex
	rm -rf $(TARGET).aux $(TARGET).log $(TARGET).out