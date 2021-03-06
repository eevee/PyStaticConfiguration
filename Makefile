
.PHONY: clean docs testi upload


clean:
	find -name *.pyc -exec rm {} \;
	rm -r docs/build/html


docs:
	sphinx-build -b html docs/source/ docs/build/html


test:
	tox -e py26


upload:
	python setup.py sdist upload upload_docs
