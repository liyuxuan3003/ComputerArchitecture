PROJECT:=ComputerArchitecture
DEPS_MAIN_TEX:=${STYS_MINIMUS} ${CLSS_NOTEBOOK_NEON}
DEPS_FIGS_TEX:=${STYS_MINIMUS} ${CLSS_STANDALONE_SILICON}

include makefile-latex/makefile-latex.mk

FIGS_TEX_DIGITAL_IC:=$(wildcard Chapter07*.fig.tex)
FIGS_TEX_PDF_DIGITAL_IC:=$(addprefix ${BUILD_DIR}/,$(FIGS_TEX:.tex=.pdf))
STYS_DIGITAL_IC:=DigitalIC.sty

${FIGS_TEX_PDF_DIGITAL_IC}: ${STYS_DIGITAL_IC}