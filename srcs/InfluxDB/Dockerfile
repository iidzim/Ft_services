FROM alpine:3.11
RUN apk update
RUN apk add vim wget openrc
RUN apk add influxdb --no-cache
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community

COPY start.sh /
CMD ["sh", "start.sh"]