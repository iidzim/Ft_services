FROM alpine:latest
RUN apk update
RUN apk add vim curl mariadb mariadb-client
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel
EXPOSE 3306
COPY start.sh /
CMD ["sh", "start.sh"]