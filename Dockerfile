# Dockerfile for moodle instance.
#Original Maintainer Jon Auer <jda@coldshore.com>

FROM  php:7.4-fpm-alpine

Maintainer Amin Khozaei <amin.khozaei@gmail.com>

#Dependencies
RUN apk add --update postgresql-dev \
		curl bash rsync unzip netcat-openbsd \
		libxml2-dev icu-dev libmcrypt-dev libpng-dev \
		libjpeg-turbo-dev libzip-dev oniguruma-dev \
		oniguruma bzip2-dev curl-dev bzip2

    
#Enable extensions
RUN docker-php-ext-install xmlrpc \
		mbstring zip intl soap gd opcache \
		pdo mysqli pdo_mysql pgsql pdo_pgsql \
		bcmath bz2;


EXPOSE 9000
CMD ["php-fpm"]