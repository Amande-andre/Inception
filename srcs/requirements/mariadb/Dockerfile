FROM alpine:3.19

RUN   apk update
RUN   apk upgrade 

RUN apk add mariadb 

RUN apk update && apk add --no-cache \
    mariadb-client \
    bash
#integrer le .env

COPY ./tools/execute.sh /
RUN  chmod +x /execute.sh
EXPOSE 3306
#CMD [ "ping", "localhost" ]
#CMD [ "/execute.sh" ]
#COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf