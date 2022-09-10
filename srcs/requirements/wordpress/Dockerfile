FROM    debian:buster

RUN     apt-get -y update \
        && apt-get install -y  \
        php7.3 \
        php7.3-fpm \
        php7.3-mysql \
        php-common php7.3-cli \
        php7.3-common \
        php7.3-json \
        php7.3-opcache \
        php7.3-readline \
        php-mbstring \
        wget



WORKDIR /var/www/html/

RUN     wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN     tar -zxf latest-fr_FR.tar.gz
RUN     rm latest-fr_FR.tar.gz

# RUN     rm /var/www/html/wordpress/wp-config-sample.php
COPY    ./config/wp-config.php /var/www/html/wordpress/wp-config-sample.php

RUN     chown -R www-data:www-data /var/www/*
RUN     chmod -R 755 /var/www/*


# RUN     chmod 777 ./wordpress/wp-config-sample.php


COPY    ./config/info.php /usr/share/nginx/html/info.php
COPY    ./config/php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
COPY    ./config/www.conf    /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE  9000

CMD    exec php-fpm7.3 -F -R



