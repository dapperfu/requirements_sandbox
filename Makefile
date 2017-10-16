# Python targets
VENV = .venv

.PHONY: venv
venv: ${VENV}

${VENV}:
	python3 -mvenv ${@}

.PHONY: pip
pip: ${VENV}
	${VENV}/bin/pip install -U pip setuptools wheel
	${VENV}/bin/pip install -U -r requirements.txt

