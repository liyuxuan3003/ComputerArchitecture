PROJECT:=ComputerArchitecture

include makefile-latex/latex-std-dependence.mk
DEPS_MAIN_TEX:=${STYS_MINIMUS} ${CLSS_NOTEBOOK_NEON}
DEPS_FIGS_TEX:=${STYS_MINIMUS} ${CLSS_STANDALONE_SILICON}

include makefile-latex/makefile-latex.mk

FIGS_TEX_RISCV_MA:=$(wildcard Chapter07*.fig.tex)
FIGS_TEX_PDF_RISCV_MA:=$(addprefix ${BUILD_DIR}/,$(FIGS_TEX:.tex=.pdf))
STYS_RISCV_MA:=RISCVMicroarchitecture.sty

${FIGS_TEX_PDF_RISCV_MA}: ${STYS_RISCV_MA}