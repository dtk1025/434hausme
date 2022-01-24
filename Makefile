install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	python -m pip install seaborn

test:
	python -m pytest --nbval haus_me_notebook.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all:
	install lint test



