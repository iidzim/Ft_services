FROM alpine:3.11
EXPOSE 21 1030 1031
RUN apk update
RUN apk add --no-cache openrc vim openssl vsftpd
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./healthy.sh /
COPY start.sh /
CMD ["sh", "start.sh"]