FROM alpine:3.11
RUN apk update
RUN apk add vim wget openrc

# RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.3_linux_amd64.tar.gz
# RUN tar -xvf telegraf-1.17.3_linux_amd64.tar.gz
# RUN rm -rf telegraf-1.17.3_linux_amd64.tar.gz
# RUN mv telegraf-1.17.3_linux_amd64 telegraf
# RUN cp -rf telegraf /path

RUN https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.3_darwin_amd64.tar.gz
RUN tar -xvf influxdb2-2.0.3_darwin_amd64.tar.gz
RUN rm -rf influxdb2-2.0.3_darwin_amd64.tar.gz
RUN mv influxdb2-2.0.3_darwin_amd64 influxdb
RUN cp -rf influxdb /var/www/html/

