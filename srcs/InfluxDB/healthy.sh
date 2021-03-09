#!/bin/sh
pgrep influxd 
i=$?
pgrep telegraf
t=$?

if [ $i -ne 0 -o $t -ne 0 ];
then
  return 1
else
  return 0
fi
