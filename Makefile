build:
	docker build -t defn/recur-template-fastapi .

run:
	docker run -ti -p 8000:8000 defn/recur-template-fastapi
