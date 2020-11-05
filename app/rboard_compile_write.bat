@echo off

cd pic/mruby-2.0.1-win
call mrbc.exe ../mrubyc_ide1.02_win/test/led.rb
echo "compile finish"
cd ../mrubyc_ide1.02_win
echo "please push RS button"
call mrbwrite.exe -l COM4 -s 19200 test/led.mrb
cd ..
echo "finish"
