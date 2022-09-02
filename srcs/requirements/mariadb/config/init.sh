#!/bin/bash

cat <<-EOF > /etc/mysql/my.cnf
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
	mysql_install_db --datadir=$DATADIR   > /dev/null

    mysql -u  root  --skip-password <<- EOF 
    		
		ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';
		CREATE DATABASE  IF NOT EXISTS $MARIADB_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;
		CREATE USER  IF NOT EXISTS '$WP_ADMIN_USER'@'%' IDENTIFIED by '$WP_ADMIN_PWD';
		GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$WP_ADMIN_USER'@'%';
		FLUSH PRIVILEGES;
	EOF
exec mysqld -u root