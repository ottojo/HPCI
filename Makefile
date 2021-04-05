LATEXMK=latexmk

all: hpci.pdf
	$(info ARTIFACTS:hpci.pdf)

.PHONY: hpci.pdf
hpci.pdf: tikz-uml.sty
	$(LATEXMK) -pdf hpci.tex

.PHONY: clean
clean:
	latexmk -C hpci.tex

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))
