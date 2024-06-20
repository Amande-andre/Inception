FROM alpine:3.19

RUN   apk update -y


RUN   apk install php-fpm php-mysql -y

RUN   apk install curl -y

RUN   apk upgrade -y
#COPY ./tools/execute.sh 

#RUN  chmod +x /setup_nginx.sh
CMD [ "/execut.sh" ]