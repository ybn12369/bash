#!/bin/sh
echo "=====START 安装QEMU + TMOE====="
read -p "Do you want continue? [Y/N] " a
[ "$a" = "Y" ] || [ "$a" = "y" ] || exit

echo "=====安装QEMU模拟器,更稳定====="
cd ~ && cd .. && cd usr && cd bin && chmod 777 qemu-system-ppc && cd ~
pkg update -y && pkg install x11-repo unstable-repo -y && pkg install qemu-utils qemu-system-x86_64-headless  qemu-system-i386-headless -y &&  termux-setup-storage 

echo "=====拉取 TMOE 官方脚本(Gitee)====="
bash -c "$(wget -O- https://gitee.com/mo2/linux/raw/2/2)"

echo "=====安装流程结束====="

