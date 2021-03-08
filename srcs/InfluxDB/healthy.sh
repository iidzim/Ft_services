#!/bin/sh
pgrep influxd 
$i = $?
pgrep telegraf
$t = $?

if [$i -ne 0] && [$t -ne 0]; then
  exit 1
fi
