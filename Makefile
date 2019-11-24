init:
	cp .env-dist .env &&\
	mkdir -p ~/.composer/cache &&\
	docker-compose build --pull --no-cache &&\
	docker-compose run --rm php composer install &&\
	docker-compose down

build:
	docker-compose build

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose down