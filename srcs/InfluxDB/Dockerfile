FROM alpine:3.11
EXPOSE 8086
RUN apk update
RUN apk add vim wget openrc
RUN apk add influxdb --no-cache
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/
COPY start.sh /
CMD ["sh", "start.sh"]
