build:
	docker build -t defn/recur-template-fastapi .

run:
	docker run -ti -p 8000:8000 defn/recur-template-fastapi

.PHONY: test
test:
	. venv/bin/activate && pytest test

.PHONY: venv
venv:
	python -mvenv venv
	. venv/bin/activate && python -m pip install --upgrade pip

venv/bin/activate:
	$(MAKE) venv

install: venv/bin/activate
	. venv/bin/activate && pip install -r requirements.txt
	. venv/bin/activate && pip install -r requirements.txt.dev

clean:
	rm -rf venv
