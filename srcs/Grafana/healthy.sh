#!/bin/sh
pgrep grafana 
g=$?
pgrep telegraf
t=$?

if [ $g -ne 0 -o $t -ne 0 ];
then
  return 1
else
  return 0
fi
