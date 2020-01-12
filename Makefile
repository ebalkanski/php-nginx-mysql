init:
	docker-compose build --pull --no-cache &&\
	docker-compose run --rm php-base composer install &&\
	docker-compose down

build:
	docker-compose build

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose down

php:
	docker-compose exec php /bin/bash

// Get container IP
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container

// Reload Nginx configuration
docker kill -s HUP container
