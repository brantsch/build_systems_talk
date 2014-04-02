DOC = build_systems_presentation
TC = pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,log,nav,out,snm,toc} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 

# macro defining how .tex files should be compiled
define compiletex
	${TC} $<
endef

# first target is default target: compile our document
${DOC}.${TCTARGET}: parts/*.tex

# pattern rule for compilation of .tex to target format
%.${TCTARGET}: %.tex %.toc
	${compiletex}

# pattern rule for generation of .toc files
%.toc: %.tex
	${compiletex}
	
# auxiliary targets
.PHONY: clean squeaky_clean view presentation edit

clean:
	rm ${EXPENDABLES}

squeaky_clean: EXPENDABLES+=${DOC}.${TCTARGET}
squeaky_clean: clean

view: ${DOC}.${TCTARGET}
	${VIEWER} ${DOC}.${TCTARGET}

presentation: ${DOC}.${TCTARGET}
	${PRESENTER} ${PRESENTER_FLAGS} ${DOC}.${TCTARGET}

edit:
	gvim -p ${DOC}.tex parts/*.tex Makefile
