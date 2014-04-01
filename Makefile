DOC	= build_systems_presentation
TC	= pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,log,nav,out,snm,toc} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 

define compiletex
	${TC} $<
endef

# pattern rule for compilation of .tex to target format
%.${TCTARGET}: %.tex %.toc
	${compiletex}

# pattern rule for generation of .toc files
%.toc: %.tex
	${compiletex}
	
default: ${DOC}.pdf 

.PHONY: clean squeaky_clean view presentation twice

clean:
	rm ${EXPENDABLES}

squeaky_clean: EXPENDABLES+=${DOC}.pdf 
squeaky_clean: clean

view: default
	${VIEWER} ${DOC}.${TCTARGET}

presentation: default
	${PRESENTER} ${PRESENTER_FLAGS} ${DOC}.${TCTARGET}

twice:
	for i in {1,2}; do \
	touch ${DOC}.tex; \
	make default; \
	done
