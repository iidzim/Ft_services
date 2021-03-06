rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb restart
mysql -e "CREATE USER 'ikram'@'%' IDENTIFIED BY '1234';" 
mysql -e "CREATE DATABASE wordpress;"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ikram'@'%';"
mysql < /wordpress.sql
mysql -e "CREATE DATABASE phpmyadmin;"
mysql < /phpmyadmin.sql

rc-service mariadb restart
/usr/bin/telegraf &
# /bin/sh
sleep infinity
