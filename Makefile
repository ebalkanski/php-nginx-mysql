down:
	docker-compose down

up:
	docker-compose up -d --remove-orphans

build:
	docker-compose build

init:
	cp .env-dist .env && \
	mkdir -p ~/.composer