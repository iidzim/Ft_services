FROM alpine:3.11
RUN apk update
RUN apk add vim wget nginx curl openrc
EXPOSE 5000
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz 
RUN  tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN  mv phpMyAdmin-5.0.2-all-languages phpmyadmin
RUN  rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN cp -rf phpmyadmin /var/www/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./config.inc.php /var/www/html/
RUN mkdir -p /var/www/html/phpmyadmin/tmp/
RUN chmod 777 /var/www/html/phpmyadmin/tmp/
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel

#telegraf
RUN apk add telegraf --no-cache --repository http://dl-2.alpinelinux.org/alpine/edge/community
COPY ./telegraf.conf /etc/

COPY start.sh /
CMD ["sh", "start.sh"]
