#! /bin/sh
#
# Command line parameters:
#
#   $1 -- olac schema file
#
# Environment variables:
#
#   OLAC_MYSQL_DB
#   OLAC_MYSQL_DB2
#   OLAC_MYSQL_USER
#   OLAC_MYSQL_PASSWORD
#

OLACDB_SCHEMA="$1"

create_db()
{
    db=$1
    if ! test -d /db/$db; then
        mysql_install_db --user=mysql --datadir=/db
        (
            echo "create database $db;"
            echo "grant all on $db.* to '$OLAC_MYSQL_USER'@'%' identified by '$OLAC_MYSQL_PASSWORD';"
            echo "use $db;"
            cat "$OLACDB_SCHEMA"
        ) | mysqld --user=mysql --datadir=/db --bootstrap --skip-grant-tables=off
    fi
}

create_db $OLAC_MYSQL_DB
create_db $OLAC_MYSQL_DB2

