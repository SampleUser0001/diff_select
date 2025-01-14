#!/bin/bash

sql=$1
result=$2
env_file=$3

source $env_file

cp $sql_1 select.sql
sqlplus $db_user/$db_password@//$db_host:$db_port/$db_service @spool.sql
cp result.tsv $result_1

