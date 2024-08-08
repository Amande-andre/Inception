<<<<<<< HEAD
FROM 	debian:bullseye

RUN	apt update -y && \
	apt upgrade -y

RUN	apt install -y nginx \
	vim \
	curl 

RUN	mkdir -p /etc/nginx/ssl && \
	apt install openssl -y

RUN	openssl req -x509 -nodes \
	-out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key -subj "/CN=anmande.42.fr"
RUN mkdir -p /var/www/wordpress

RUN	chmod 755 /var/www/wordpress && \
	chown -R www-data:www-data /var/www/wordpress

RUN mkdir -p /var/run/nginx

COPY	tools/default /etc/nginx/sites-available/default

COPY	conf/nginx.conf /etc/nginx/nginx.conf



ENTRYPOINT [ "nginx", "-g", "daemon off;" ] 
#cela permet de lancer nginx en avant plans et nom en arriere plans.
=======
FROM alpine:3.19
RUN   apk update && apk upgrade && apk add \
        openssl \
        nginx \
        curl \
        vim \
        sudo
RUN rm -f /etc/nginx/conf /etc/nginx/conf



COPY ./conf/config.conf /etc/nginx/http.d/config.conf
#COPY ./tools/execute.sh /setup_nginx.sh

#RUN  chmod +x /setup_nginx.sh
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=42/CN=localhost"


EXPOSE 443

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

>>>>>>> 7b94ed9b2076a35ca217073f465833344b4cdc10
