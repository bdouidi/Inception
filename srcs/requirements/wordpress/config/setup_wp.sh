#!/bin/sh

if [ -f ./wordpress/wp-config.php ]
then
	echo "wp-config.php already exist"
else
    wget https://fr.wordpress.org/latest-fr_FR.tar.gz
	tar -xzf latest-fr_FR.tar.gz
	rm -rf latest-fr_FR.tar.gz


	cd /var/www/html/wordpress
	sed -i "s/database_name_here/$DB_NAME/g" wp-config-sample.php
	sed -i "s/username_here/$DB_USER/g" wp-config-sample.php
	sed -i "s/password_here/$DB_USER_PASSWORD/g" wp-config-sample.php
	sed -i "s/localhost/$DB_HOST/g" wp-config-sample.php
	# cp wp-config-sample.php wp-config.php
    chown -R www-data:www-data /var/www/html/wordpress
    chmod -R 755 /var/www/html/wordpress
fi

exec "$@"