#!/bin/sh

wp core download --locale=fr_FR --allow-root

while ! mysqladmin -hmariadb -u$DB_USER -p$DB_USER_PASSWORD ping; do
	sleep 2
done
echo "===> create wp-config.php <==== "

wp config create    --dbname=$DB_NAME \
                    --dbuser=$DB_USER \
                    --dbpass=$DB_USER_PASSWORD \
                    --dbhost=$DB_HOST \
                    --dbcharset=$DB_CHARSET \
                    --dbcollate="utf8_general_ci" \
                    --allow-root

echo "===>  setup Wordpress <==== "

wp core install --url="idouidi.42.fr" \
                --title=INCEPTION \
                --admin_user=$DB_ADMIN \
                --admin_password=$DB_ADMIN_PASSWORD \
                --admin_email="idouidi@student.42.fr" \
                --dbhost=$DB_HOST \
                --allow-root

echo "===> create a user <==="

wp user create	$DB_USER  \
				--role=author \
				--user_pass=$DB_USER_PASSWORD \
				--allow-root

exec php-fpm7.3 -F -R