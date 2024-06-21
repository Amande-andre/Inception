FROM alpine:3.19

RUN   apk update
RUN   apk upgrade 

RUN apk update && apk add --no-cache \
    curl \
    iputils \
    php82 \
    php82-fpm \
    php82-curl \
    php82-openssl \
    php82-mysqli \
    php82-json \
    php82-xml \
    php82-phar \
    php82-intl \
    php82-dom \
    php82-xmlreader \
    php82-ctype \
    php82-mbstring \
    php82-gd \
    php82-zip \
    php82-opcache \
    php82-fileinfo

COPY ./tools/execute.sh /

RUN  chmod +x /execute.sh

CMD [ "/execute.sh" ]
#CMD [ "ping", "localhost" ]