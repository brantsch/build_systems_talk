DOC = build_systems_paper
TC = pdflatex
TCTARGET = pdf
EXPENDABLES = ${DOC}.{aux,blg,log,out,toc}
VIEWER = zathura

# first target is default target: compile our document
${DOC}.${TCTARGET}: parts/*.tex ../build_systems.bib 

include ../Makefile.common
