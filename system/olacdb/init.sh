#! /bin/bash

mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<EOF
create database $OLAC_MYSQL_DB;
create database $OLAC_MYSQL_DB2;
use $OLAC_MYSQL_DB;
source /olac_schema.sql;
use $OLAC_MYSQL_DB2;
source /olac_schema.sql;
grant all on olac.* to '$OLAC_MYSQL_USER'@'%' identified by '$OLAC_MYSQL_PASSWORD';
grant all on olac2.* to '$OLAC_MYSQL_USER'@'%' identified by '$OLAC_MYSQL_PASSWORD';
insert into olac.admin_auth values ('$OLAC_REPO_REVIEW_USER', '$OLAC_REPO_REVIEW_PASSWORD')
EOF
