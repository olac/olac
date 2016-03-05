#! /bin/sh

if [ ! -d /db/mysql ]; then
    mysql_install_db --user=mysql --datadir=/db
    (
        cat <<EOF
create database olac;
use olac;
EOF
        cat /olac/system/olacdb/olac_schema.sql
    ) | mysqld --user=mysql --datadir=/db --bootstrap

fi

syslogd
mysqld --user=mysql --datadir=/db &
exec httpd -D FOREGROUND

