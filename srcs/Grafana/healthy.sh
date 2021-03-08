#!/bin/sh
pgrep grafana 
$g = $?
pgrep telegraf
$t = $?

if [$g -ne 0] && [$t -ne 0]; then
  exit 1
fi
