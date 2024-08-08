#!/bin/sh
service mysql start

echo "USER == ${MYSQL_USER}"
mysql -e "CREATE DATABASE wordpress;"
#endessous changer par .env `${MYSQL_USER}\ et ${MYSQL_PASSWORD}` 
mysql -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_USER';"
#donner les droits
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'localhost' IDENTIFY BY '$DB_USER';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_USER';"
#raffraichit les droits
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u root -p '$DB_USER' shutdown
exec mysqld_safe

while true; do
    sleep 1
fi