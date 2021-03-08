#!/bin/sh
pgrep nginx 
$n = $?
pgrep sshd
$s = $?
pgrep telegraf
$t = $?

if [$n -ne 0] && [$s -ne 0] && [$t -ne 0]; then
  exit 1
fi
