
INSTALL_DIR = ${HOME}/.urxvt
SCRIPTS     = mark-yank-urls

INSTALL     = $(shell which install)

.PHONY: all help install check_path

all: help

help:
	@echo "make [target]"
	@echo
	@echo "  install      install scripts in ${INSTALL_DIR}"
	@echo 

install: check_path ${INSTALL} ${SCRIPTS}
	${INSTALL} -t ${INSTALL_DIR} ${SCRIPTS}

check_path: ${INSTALL}
	@[ -d "${HOME}" ] || ( echo "environment variable HOME is not a directory" >&2 ; false )
	${INSTALL} -d ${INSTALL_DIR}
