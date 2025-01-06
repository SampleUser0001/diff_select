-- 検索結果をCSVへ出力する

-- コンソールメッセージを非表示にする
SET ECHO OFF

-- 1行に出力するバイト数
-- 少ないと見切れるので最大に設定する
SET LINESIZE 32767

-- 1ページの行数
-- 少ないとヘッダーが多くて見づらいので無制限に設定する
-- SET PAGESIZE 0
-- ヘッダが欲しい場合は下記の設定。
SET PAGESIZE 50000
SET HEADING ON
SET UNDERLINE OFF

-- 「○○行が選択されました」メッセージを非表示にする
SET FEEDBACK OFF

-- 区切り文字をタブに指定する
SET COLSEP '	'

-- 各行の右端にあるスペースを削除する
SET TRIMSPOOL ON

-- 出力パスは適宜変更する
SPOOL result.tsv

-- 検索文は適宜変更する
@select.sql

-- ④出力終了
SPOOL OFF

exit;