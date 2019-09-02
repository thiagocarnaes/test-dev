FROM php:7-fpm-alpine

RUN docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    chmod +x /usr/bin/composer 

WORKDIR /var/www
COPY ./api /var/www/api

EXPOSE 9000
CMD ["php-fpm"]
