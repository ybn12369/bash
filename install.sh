#!/bin/sh
echo "=====START====="
echo "本次将安装使用ZeroTermux必备的软件包，10秒后开始，请仔细阅读！"
sleep 10
#开始安装
echo "=====开始安装较小的包====="
pkg install git wget curl -y

echo "=====开始安装大包，请仔细阅读条款====="
echo "使用条款:别举报我就行，有bug或问题发到邮箱:ybn12369@outlook.com!"
read -p "Do you want continue? [Y/N] " a
[ "$a" = "Y" ] || [ "$a" = "y" ] || exit
pkg install python proot proot-distro -y
echo "=====END====="

