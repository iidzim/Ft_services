#!/bin/sh
pgrep mariadb 
$m = $?
pgrep telegraf
$t = $?

if [ $m -ne 0 -a $t -ne 0 ]; then
  exit 1
fi
