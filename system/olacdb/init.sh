#! /bin/sh

OLACDB_SCHEMA="$1"

create_db()
{
    db=$1
    if ! test -d /db/$db; then
        mysql_install_db --user=mysql --datadir=/db
        (
            echo "create database $db;"
            echo "grant all on $db.* to 'olac'@'%' identified by 'olac123';"
            echo "use $db;"
            cat "$OLACDB_SCHEMA"
        ) | mysqld --user=mysql --datadir=/db --bootstrap --skip-grant-tables=off
    fi
}

create_db olac
create_db olac2

