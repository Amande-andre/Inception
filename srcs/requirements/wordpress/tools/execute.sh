#!/bin/sh

cd /var/www/html

rm -rf /var/www/html/*

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --prompt=$DB_PASS --dbhost=$MYSQL_HOST --allow-root #--dbport=$MYSQL_PORT
#creer une boucle pour que le script ne s arrete pas tant que le php n est pas execute
exec php-fpm82 -F
