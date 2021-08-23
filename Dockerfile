FROM php:8.0.7-apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN apt-get update \
    && apt-get install -y --no-install-recommends locales nano apt-utils curl wget git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev zsh;
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
   mv composer.phar /usr/local/bin/composer
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql gd intl zip mbstring zip
WORKDIR /var/www/
