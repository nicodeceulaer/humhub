FROM php:5.6-fpm
# Install modules
RUN apt-get update && apt-get install -y imagemagick libpng12-dev libfreetype6-dev libjpeg62-turbo-dev
RUN pecl install imagick memcached
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-configure mbstring
RUN docker-php-ext-install gd pdo pdo_mysql mbstring zip

CMD ["php-fpm"]