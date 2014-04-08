DOC = build_systems_presentation
TC = pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,log,nav,out,snm,toc,bbl,blg} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 

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
.PHONY: clean squeaky_clean view presentation edit

clean:
	-rm -f ${EXPENDABLES}

squeaky_clean: EXPENDABLES+=${DOC}.${TCTARGET}
squeaky_clean: clean

view: ${DOC}.${TCTARGET}
	${VIEWER} ${DOC}.${TCTARGET}

presentation: ${DOC}.${TCTARGET}
	${PRESENTER} ${PRESENTER_FLAGS} $<

edit:
	gvim -p ${DOC}.tex parts/*.tex Makefile
