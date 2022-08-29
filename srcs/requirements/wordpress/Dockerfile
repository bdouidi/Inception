FROM    debian:buster

RUN     apt-get -y update && apt-get -y upgrade \
        && apt-get update && apt-get install -y  \
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

RUN     wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN     tar -zxf latest-fr_FR.tar.gz
RUN     rm latest-fr_FR.tar.gz

RUN    cp -r wordpress  /var/www/

# RUN     rm var/www/html/index.nginx-debian.html && rm /var/www/html/wordpress/wp-config-sample.php

RUN     chown -R www-data:www-data /var/www/*
RUN     chmod -R 755 /var/www/*

ADD     ./config/wp-config.php ./var/www/html/wordpress/wp-config.php
ADD     ./config/info.php /usr/share/nginx/html/info.php

CMD    exec php-fpm7.3 -F



