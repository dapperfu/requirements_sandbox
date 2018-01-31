VENV ?= .venv

# OS Detection
ifeq ($(OS),Windows_NT)
    VENV_BIN := ${VENV}/Scripts
else
    VENV_BIN := ${VENV}/bin
endif

.PHONY: venv
venv: ${VENV}

${VENV}: requirements.txt
	@python3 -mvenv ${@}
	@${VENV_BIN}/pip.exe install --upgrade pip setuptools wheel
	@${VENV_BIN}/pip.exe install --upgrade --requirement requirements.txt
	@${VENV_BIN}/pip.exe install -e doorstop/

.PHONY: nb
nb:
	@${VENV_BIN}/jupyter-notebook
	
PHONY: clean
clean:
	@git clean -xfd

requirements.txt:
	@echo 'requirements.txt' is missing.
	@exit 1
