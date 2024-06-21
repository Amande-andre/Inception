#!/bin/sh
service mysql start

mysql -e "CREATE DATABASE wordpress;"
#endessous changer par .env `${MYSQL_USER}\ et ${MYSQL_PASSWORD}` 
mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';"
#donner les droits
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'localhost' IDENTIFY BY 'admin';" 
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'admin';"
#raffraichit les droits
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u root -p 'admin' shutdown
exec mysqld_safe

while true; do
    sleep 1
fi