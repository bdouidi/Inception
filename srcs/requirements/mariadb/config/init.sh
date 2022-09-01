#!/bin/bash

# set -euo pipefail #voir help set
set -euo pipefail

dataDB=/var/lib/mysql/init_dataDB.sql

if [ ! -f $dataDB ];
then
	cat > $dataDB <<EOF
	CREATE DATABASE  IF NOT EXISTS $MYSQL_DATABASE_NAME;
	CREATE USER  IF NOT EXISTS '$WP_ADMIN_USER'@'%' IDENTIFIED by '$WP_ADMIN_PWD';
	GRANT ALL PRIVILEGES ON $MYSQL_DATABASE_NAME.* TO '$WP_ADMIN_USER'@'%';
	FLUSH PRIVILEGES;
EOF

    for i in {30..0}; do
        if mysql --user=root --password=$MYSQL_ROOT_PWD --database=mysql <<<'SELECT 1' &> /dev/null; then
            break
        fi 
        sleep 1
    done
    if [ "$i" = 0 ]; then
        exit 1
    fi
    mysql --user=root --password=$MYSQL_ROOT_PWD < $dataDB && killall mysqld
fi

exec "$@"