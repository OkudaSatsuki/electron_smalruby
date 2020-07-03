@echo off
rem SmTのメニューバー「Rboard」→「書き込み」をクリックしたときにこのバッチファイル処理が行われてほしい
rem mruby-2.0.1-win/mrbc.exe：rbファイルをコンパイルしバイトコード(mrbファイル？)を生成
rem mrubyc_ide1.02_win/mrbwrite.exe：生成したバイトコードをRboardに書き込む

cd mruby-2.0.1-win
call mrbc.exe ../mrubyc_ide1.02_win/test/led.rb
echo "compile finish"
cd ../mrubyc_ide1.02_win
call mrbwrite.exe
echo "finish"
