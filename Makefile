
INSTALL_DIR = ${HOME}/.urxvt
SCRIPTS     = mark-yank-urls

INSTALL     = $(shell which install)

.PHONY: all help install clean check_install_dir

all: help

help:
	@echo "make [target]"
	@echo
	@echo "  install      install scripts in ${INSTALL_DIR}"
	@echo 

install: check_install_dir ${INSTALL} ${SCRIPTS}
	${INSTALL} -t ${INSTALL_DIR} ${SCRIPTS}

clean:
	-rm -f *~

check_install_dir: ${INSTALL}
	@[ -d "${HOME}" ] || ( echo "environment variable HOME is not a directory" >&2 ; false )
	${INSTALL} -d ${INSTALL_DIR}
