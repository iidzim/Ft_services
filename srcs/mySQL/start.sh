rc-status
rc-service mariadb restart
mysql -e "CREATE USER 'ikram'@'%' IDENTIFIED BY '1234';" 
mysql -e "CREATE DATABASE wordpress;"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "GRANT ALL  PRIVILEGES ON *.* TO 'ikram'%'%';"
/bin/sh
