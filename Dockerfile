FROM php:8.1-cli

RUN apt-get update && apt-get install -y git unzip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app
COPY . /app

RUN composer install
CMD ["php", "-S", "0.0.0.0:8000", "-t", "src"]
