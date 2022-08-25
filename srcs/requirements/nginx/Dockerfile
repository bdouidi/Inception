FROM    debian:buster

RUN     apt-get update && apt-get install -y systemd nginx vim openssl

EXPOSE  80 443

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=DVSGroup/OU=ogarthar/CN=https:\/\/github.com\/kirikova-k/emailAddress=dvs. kirickova.k@yandex.ru"

RUN     rm /etc/nginx/nginx.conf
COPY    ./nginx.conf /etc/nginx/nginx.conf

# ENTRYPOINT ["nginx", "-g", "daemon off;"]