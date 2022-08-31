FROM    debian:buster

RUN     apt-get update && apt-get install -y systemd nginx vim openssl

EXPOSE  80 443

RUN     mkdir -p /etc/nginx/ssl && openssl req -newkey rsa:2048 -x509 -days 365 -nodes -keyout /etc/nginx/ssl/services.key -out /etc/nginx/ssl/services.pem \
        -subj "/C=FR/ST=Paris/L=Paris/O=42, Inc./OU=IT/CN=Inception"

COPY    ./config/nginx.conf  /etc/nginx/sites-available/default

CMD     ["nginx", "-g", "daemon off;"]
