FROM    debian:buster

RUN     apt-get update && apt-get install -y systemd nginx vim openssl

EXPOSE  80 443

# RUN   openssl req \
        # -x509 \
        # -nodes \ 
        # -days 365 \
        # -newkey rsa:2048 \
        # -keyout /etc/ssl/private/nginx-selfsigned.key \
        # -out /etc/ssl/certs/nginx-selfsigned.crt \

COPY    ./srcs/default.conf /etc/nginx/conf.d/
RUN     rm -rf /etc/nginx/sites-enabled/default

CMD     ["nginx", "-g", "daemon off;"]
