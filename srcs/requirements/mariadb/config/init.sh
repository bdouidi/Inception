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
mysql_install_db

/etc/init.d/mysql start

# if [ ! -d $DATADIR/mysql ]; then
# echo "\n[i]Initialization of database\n"
# 	sleep 2

#			DATABASE
	mysql -u root -e "CREATE DATABASE  IF NOT EXISTS wordpress";

#			CREATE ADMIN
	mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_ADMIN' @'%' IDENTIFIED by '$DB_ADMIN_PASSWORD'";
	mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_ADMIN'@'%'";

#			CREATE USER
	mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER' @'%' IDENTIFIED by '$DB_USER_PASSWORD'";
	mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%'";

#			DELETE ANONYMUS USER
	mysql -u root -e "DELETE FROM mysql.user WHERE user='';"
	mysql -u root -e "DELETE FROM mysql.user WHERE user='root';"

	mysql -u root -e "FLUSH PRIVILEGES;"
	mysql -u root -e $DB_NAME < /tmp/wordpress.sql
# else
# 	echo "DATABASE WORDPRESS ALREADY EXIST"
# fi
service mysql stop

exec mysqld