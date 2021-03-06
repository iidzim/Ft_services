rc-status
rc-service nginx restart
rc-service php-fpm7 restart
#  telegraf  --config /etc/telegraf.conf &
# /bin/sh
/usr/bin/telegraf &
sleep infinity