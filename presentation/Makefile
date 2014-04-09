DOC = build_systems_presentation
TC = pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,log,nav,out,snm,toc,bbl,blg} 
VIEWER = zathura
PRESENTER = impressive
PRESENTER_FLAGS = --nologo --fade --transtime 250 --transition CrossFade 

# first target is default target: compile our document
${DOC}.${TCTARGET}: parts/*.tex ../build_systems.bib

include ../Makefile.common

presentation: ${DOC}.${TCTARGET}
	${PRESENTER} ${PRESENTER_FLAGS} $<
