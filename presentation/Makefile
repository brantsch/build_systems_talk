DOC = build_systems_presentation
TC = pdflatex
TCFLAGS = --shell-escape
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,log,nav,out,snm,toc,bbl,blg,vrb,pyg} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 
BIBPARTS = gnumakebib

include ../Makefile.common

.PHONY: presentation 

presentation: ${DOC}.${TCTARGET}
	${PRESENTER} ${PRESENTER_FLAGS} $< &
