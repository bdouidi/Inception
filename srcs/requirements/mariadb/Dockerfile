FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server mariadb-client

COPY ./config/50-server.conf /etc/mysql/mariadb.conf.d
COPY  ./config/init.sh /tmp/init.sh

RUN mkdir -p /run/mysqld /var/lib/mysql
RUN chmod 777 /var/lib/mysql
RUN chmod 777 /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql
RUN chown -R mysql:mysql /run/mysqld

EXPOSE 3306

ENTRYPOINT ["bash", "/tmp/init.sh"]

