#!/bin/sh
pgrep mysql 
m=$?
pgrep telegraf
t=$?

if [ $m -ne 0 -o $t -ne 0 ];
then
  return 1
else
  return 0
fi
