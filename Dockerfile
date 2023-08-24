# Usamos a imagem base do PHP com Apache
FROM php:8.0-apache

# Instale as extensões e bibliotecas necessárias do PHP
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
        zlib1g-dev \
        g++ \
        libicu-dev \
        libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql mbstring exif pcntl bcmath opcache intl zip

# Instalação do Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Instalação do Node.js e npm
RUN apt-get install -y curl software-properties-common && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Configuração do Apache para SSL
#COPY ./apache/my-ssl.conf /etc/apache2/sites-available/
#RUN a2enmod ssl && a2ensite my-ssl.conf

# Copie a configuração do VirtualHost para o Apache
COPY ./apache/my-site.conf /etc/apache2/sites-available/
RUN a2ensite my-site.conf && a2dissite 000-default.conf

