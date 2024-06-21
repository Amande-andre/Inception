FROM alpine:3.19

RUN   apk update
RUN   apk upgrade 

RUN apk add mariadb 

#COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN echo "ok je tourne"
CMD [ "executable.sh" ]

