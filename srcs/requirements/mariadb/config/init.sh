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

if [ ! -d $DATADIR/mysql ]; 
then
	echo "\n[i]Initialization of database\n"
	sleep 2
	mysql_install_db --datadir=$DATADIR   > /dev/null

    mysql -u  root  --skip-password <<EOF 
    		
		 ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';

		CREATE DATABASE  IF NOT EXISTS $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;
		CREATE USER  IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED by '$DB_PASSWORD';
		GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';
		FLUSH PRIVILEGES;
EOF
	mysqladmin -u root -p"$ROOT_PASSWORD" wordpress < /tmp/dump.sql
	mysqladmin -u root -p"$ROOT_PASSWORD" shutdown
else
	echo "\n database ==> wordpress <== is already created"
	sleep 2
fi
exec mysqld -u root