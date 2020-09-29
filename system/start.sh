#! /bin/sh

hostname > `cat /etc/olacbase`/conf/mysql/host

exec httpd -D FOREGROUND
