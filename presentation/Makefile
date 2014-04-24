DOC = build_systems_presentation
TC = pdflatex
TCFLAGS += --shell-escape
TCTARGET = pdf
EXPENDABLES = *.{aux,log,nav,out,snm,toc,bbl,blg,vrb,pyg} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 

include ../Makefile.common

.PHONY: presentation 

presentation: ${DOC}.${TCTARGET}
	${PRESENTER} ${PRESENTER_FLAGS} $< &
