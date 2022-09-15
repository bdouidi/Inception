FROM    debian:buster

RUN     apt-get -y update \
        && apt-get install -y  \
        php7.3-cli \
        php7.3-common \
        php7.3-curl \
        php7.3-mbstring \
        php7.3-mysql \
        php-fpm curl \
        mariadb-client \
        wget

EXPOSE  9000

COPY    ./config/www.conf /etc/php/7.3/fpm/pool.d/

RUN     mkdir -p /run/php

COPY    ./config/setup_wp.sh /tmp/

ENTRYPOINT ["bash", "/tmp/setup_wp.sh"]

WORKDIR /var/www/html/

CMD ["/usr/sbin/php-fpm7.3", "-F", "-R"]

# FROM    debian:buster

# RUN     apt-get -y update \
#         && apt-get install -y  \
#         php7.3-cli \
#         php7.3-common \
#         php7.3-curl \
#         php7.3-mbstring \
#         php7.3-mysql \
#         php-fpm curl \
#         mariadb-client \
#         curl

# EXPOSE  9000

# # COPY    ./config/php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
# COPY    ./config/www.conf    /etc/php/7.3/fpm/pool.d/www.conf

# RUN     mkdir -p /var/www/html/
# RUN     mkdir -p /run/php

# RUN     chown -R www-data:www-data /var/www/*
# RUN     chmod -R 755 /var/www/*

# WORKDIR /var/www/html/
# RUN     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN     chmod +x wp-cli.phar
# RUN     mv wp-cli.phar /usr/local/bin/wp
# RUN     wp --info

# COPY    ./config/setup_wp.sh .
# # RUN    rm ./config/wp-config.php 

# ENTRYPOINT ["bash", "setup_wp.sh"]



