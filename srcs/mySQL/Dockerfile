FROM alpine:3.11
EXPOSE 3306
RUN apk update
RUN apk add vim curl openrc mariadb mariadb-client
#RUN mkdir -p /run/openrc/
#RUN touch /run/openrc/softlevel
COPY mariadb-server.cnf /etc/my.cnf.d/

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/

COPY start.sh /
CMD ["sh", "/start.sh"]
