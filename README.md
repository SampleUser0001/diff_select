# diff_select

select結果のdiffを出力する。(Oracle用)

- [diff\_select](#diff_select)
  - [準備](#準備)
  - [実行](#実行)

## 準備

1. `format.env`をコピーして、`.env.1`と`.env.2`を作成する。
2. `.env.1`と`.env.2`に接続情報を記載する。
3. SQLファイルを2つ準備

## 実行

``` bash
sql_1=
result_1=
sql_2=
result_2=

diff_result=

bash app.sh $sql_1 $result_1 $sql_2 $result_2 $diff_result
```
