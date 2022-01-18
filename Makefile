setup:
	python3 -m venv ~/.myrepo

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	#PYTHONPATH=. ^&&py.test

lint:
	pylint --disable=R,C myrepolib

all: install lint test
