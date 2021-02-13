FROM alpine:latest
RUN apk update
RUN apk add vim curl openrc mariadb mariadb-client
#RUN mkdir -p /run/openrc/
#RUN touch /run/openrc/softlevel
EXPOSE 3306
COPY start.sh /
COPY mariadb-server.cnf /etc/my.cnf.d/
CMD ["sh", "/start.sh"]
