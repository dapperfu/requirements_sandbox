.DEFAULT: all
.PHONY: all
all:
	@echo !!

VENV ?= .venv

.PHONY: venv
venv: ${VENV}

${VENV}:
	@python3 -mvenv ${@}
	@${VENV}/bin/pip install --upgrade pip setuptools wheel
	@${VENV}/bin/pip install --upgrade --requirement requirements.txt


.PHONY: clean
clean:
	@git clean -xfd
