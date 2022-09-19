#!/bin/sh

wp core download --locale=fr_FR --allow-root

chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

sleep 2

if [ -f /var/www/html/wp-config.php ]
then
	echo "===> wp-config.php already exist <==="
	sleep 2
else
echo "===> create wp-config.php <==== "
sleep 2

wp config create --dbname=$DB_NAME \
                 --dbuser=$DB_USER \
                 --dbpass=$DB_USER_PASSWORD \
                 --dbhost=$DB_HOST \
                 --dbcharset=$DB_CHARSET \
                 --dbcollate="utf8_general_ci" \
                 --allow-root

echo "===>  Install Wordpress <==== "
sleep 2

wp core install --url="idouidi.42.fr" \
                --title=INCEPTION \
                --admin_user=$DB_ADMIN \
                --admin_password=$DB_ADMIN_PASSWORD \
                --admin_email="idouidi@student.42.fr" \
                --allow-root

echo "===> create a user <==="
sleep 2

wp user create	$DB_USER  \
				--role=author \
				--user_pass=$DB_USER_PASSWORD \
				--allow-root
fi
exec php-fpm7.3 -F -R