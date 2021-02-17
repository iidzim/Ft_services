rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb restart
mysql -e "CREATE USER 'ikram'@'%' IDENTIFIED BY '1234';" 
mysql -e "CREATE DATABASE db;"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ikram'@'%';"
rc-service mariadb restart
# /bin/sh
sleep infinity
