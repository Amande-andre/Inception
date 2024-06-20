#!/bin/sh

mkdir /var/www/
mkdir /var/www/html

cd /var/www/html

rm -rf /var/www/html/*

curl -O https://wordpress.org/latest.tar.gz

chmod +x latest.tar.gz

mv latest.tar.gz /usr/local/bin/wp

wp core download --allow-root

mv /var/www/html/wp-config-sample.php /wp-config.php

mv /wp-config.php /var/www/html/wp-config.php

sed -i -r "s/db1/$