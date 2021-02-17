FROM alpine:3.11
RUN apk update
RUN apk add vim curl openrc mariadb mariadb-client
#RUN mkdir -p /run/openrc/
#RUN touch /run/openrc/softlevel
EXPOSE 3306
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY start.sh /
CMD ["sh", "/start.sh"]
