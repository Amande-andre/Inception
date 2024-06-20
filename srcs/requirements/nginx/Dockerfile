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

EXPOSE 443

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

