#!/bin/bash

cat <<EOF > /etc/mysql/my.cnf
[mysqld]
user = root
port = 3306
datadir = /var/lib/mysql
bind-address = 0.0.0.0
skip-bind-address
skip-networking = false
pid-file = /run/mysqld/mysqld.pid
socket = /run/mysqld/mysqld.sock
EOF

if [ -d /var/lib/mysql/mysql ]; then 
	echo "===> $MYSQL_DB_NAME already exist !"
else
	echo "Create DATABASE $MYSQL_DB_NAME"
	mysql_install_db --datadir=/var/lib/mysql
	mysqld_safe &
	sleep 2

	mysql -u  root  --skip-password << EOF 
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_DB_ROOT_PASSWORD}';
CREATE DATABASE  IF NOT EXISTS $MYSQL_DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER  IF NOT EXISTS '$WP_USER'@'%' IDENTIFIED by '$WP_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$WP_USER'@'%';
FLUSH PRIVILEGES;
EOF
	mysqladmin -u root -p$MYSQL_DB_ROOT_PASSWORD shutdown
	sleep 2
fi

exec mysqld -u root