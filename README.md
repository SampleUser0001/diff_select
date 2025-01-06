# diff_select

select結果のdiffを出力する。(Oracle用)

- [diff\_select](#diff_select)
  - [準備](#準備)
  - [実行](#実行)

## 準備

1. `.env`に接続情報を書く
2. SQLファイルを2つ準備

## 実行

``` bash
sql_1=
result_1=
sql_2=
result_2=

diff_result=

bash app.sh $sql_1 $result_1 $sql_2 $result_2 $diff_result
```
