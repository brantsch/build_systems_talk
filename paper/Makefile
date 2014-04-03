DOC = build_systems_paper
TC = pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,blg,log,out,toc}
VIEWER = zathura

# macro defining how .tex files should be compiled
define compiletex
	${TC} $<
endef
	
# first target is default target: compile our document
${DOC}.${TCTARGET}: parts/*.tex ../build_systems.bib 

# pattern rule for compilation of .tex to target format
%.${TCTARGET}: %.tex %.toc %.bbl %.blg
	${compiletex}

%.bbl %.blg: %.aux
	bibtex $<

%.aux: %.tex
	${compiletex}

# pattern rule for generation of .toc files
%.toc: %.tex
	${compiletex}

# auxiliary targets
.PHONY: clean squeaky_clean view edit

clean:
	rm ${EXPENDABLES}

squeaky_clean: EXPENDABLES+=${DOC}.${TCTARGET}
squeaky_clean: clean

view: ${DOC}.${TCTARGET}
	${VIEWER} $<

edit:
	gvim -p ${DOC}.tex parts/*.tex Makefile
