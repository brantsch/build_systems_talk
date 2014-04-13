DOC = build_systems_presentation
TC = pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,log,nav,out,snm,toc,bbl,blg} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 
PYGMENTS_STYLE = fruity

LSTINPUT += Makefile
LSTINPUT += ../Makefile.common
EXPENDABLES += listings/*

include ../Makefile.common

.PHONY: presentation 

presentation: ${DOC}.${TCTARGET}
	${PRESENTER} ${PRESENTER_FLAGS} $< &
