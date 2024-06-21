FROM alpine:3.19

RUN   apk update
RUN   apk upgrade 

RUN apk add mariadb 

COPY ./tools/execute.sh /etc/mysql/mariadb.conf.d/50-server.cnf



