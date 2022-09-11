#!/bin/bash

cat << EOF > /etc/mysql/my.cnf
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
service mysql restart
tail -f /dev/null
    mysql -u  root <<EOF 
    		
		 ALTER USER 'root'@'localhost' IDENTIFIED BY 'toto';

		CREATE DATABASE  IF NOT EXISTS wordpress;
		CREATE USER  IF NOT EXISTS 'idouidi'@'localhost' IDENTIFIED by 'idouidi';
		GRANT ALL PRIVILEGES ON wordpress . * TO 'idouidi'@'localhost';
		FLUSH PRIVILEGES;
EOF
# if [ ! -d $DATADIR/mysql ]; 
# then
# 	echo "\n[i]Initialization of database\n"
# 	sleep 2
# 	mysql_install_db --datadir=$DATADIR   > /dev/null

# 	mysqladmin -u root -p"$ROOT_PASSWORD" wordpress < /tmp/dump.sql
# 	mysqladmin -u root -p"$ROOT_PASSWORD" shutdown
# else
# 	echo "\n database ==> wordpress <== is already created"
# 	sleep 2
# fi
service mysql stop
exec mysqld -u root 