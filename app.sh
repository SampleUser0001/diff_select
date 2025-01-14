#!/bin/bash

source .env

sql_1=$(realpath $1)
sql_2=$(realpath $3)

result_1=$(realpath $2)
result_2=$(realpath $4)

diff_result=$(realpath $5)

pushd $(pwd)/work > /dev/null

bash exec_select.sh $sql_1 $result_1 .env.1
bash exec_select.sh $sql_2 $result_2 .env.2
diff $result_1 $result_2 > $diff_result

popd > /dev/null

