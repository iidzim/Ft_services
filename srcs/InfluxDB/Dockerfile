FROM alpine:3.11
# 8086: this is the HTTP API endpoint port, it’s used to send query to
# influxdb by HTTP request
EXPOSE 8086 
RUN apk update
RUN apk add libc6-compat
RUN apk add vim wget openrc curl
RUN apk add influxdb --no-cache
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir -p /etc/telegraf/
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY start.sh /
CMD ["sh", "start.sh"]
