rc-status
touch /run/openrc/softlevel
influx user create -n admin -p admin 
rc-service telegraf start
# /bin/sh
sleep infinity
