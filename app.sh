#!/bin/bash

source .env

sql_1=$(realpath $1)
sql_2=$(realpath $3)

result_1=$(realpath $2)
result_2=$(realpath $4)

diff_result=$(realpath $5)

pushd $(pwd)/work > /dev/null

cp $sql_1 select.sql
sqlplus $db_user/$db_password@//$db_host:$db_port/$db_service @spool.sql
cp result.tsv $result_1

cp $sql_2 select.sql
sqlplus $db_user/$db_password@//$db_host:$db_port/$db_service @spool.sql
cp result.tsv $result_2

diff $result_1 $result_2 > $diff_result

popd > /dev/null

