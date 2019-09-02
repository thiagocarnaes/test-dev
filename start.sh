#!/usr/bin/env bash

docker-compose up --build -d

docker exec -w /var/www/api app composer install

docker exec -w /var/www/api app php artisan migrate

docker exec -w /var/www/html web npm install --loglevel verbose

docker exec -w /var/www/html web npm run build --loglevel verbose