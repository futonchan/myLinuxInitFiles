#!/bin/sh
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
str=`ubuntu-drivers devices | grep recommended`
ary=(`echo $str`)   # 配列に格納
# echo ${#ary[@]}     # 配列の要素数を表示
# 表示
drivername=${ary[2]}
sudo apt install ${drivername}
reboot
