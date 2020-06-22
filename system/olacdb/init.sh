#! /bin/sh

OLACDB_SCHEMA="$1"

mysql_install_db --user=mysql --datadir=/db
(
    echo "create database olac;"
    echo "grant all on olac.* to 'olac'@'%' identified by 'olac123';"
    echo "use olac;"
    cat "$OLACDB_SCHEMA"
) | mysqld --user=mysql --datadir=/db --bootstrap --skip-grant-tables=off

