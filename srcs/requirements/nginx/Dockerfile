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

