run-tests:
	coverage run -m pytest -v tests
	coverage report

check-quality:
	flake8 .
	isort .
	black .

test-build:
	python -m build && twine check dist/*

validate-merge: run-tests test-build

full-check: check-quality validate-merge
