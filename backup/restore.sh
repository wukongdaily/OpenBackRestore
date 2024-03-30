#!/bin/sh
# 恢复软件源
cp distfeeds.conf /etc/opkg/distfeeds.conf
# 恢复已安装列表
opkg update
cat packages-list.txt | cut -f 1 -d ' ' | xargs opkg install
# 恢复/overlay 配置
tar -xzvf overlay_backup.tar.gz -C /
# 恢复/etc 配置
tar -xzvf etc_backup.tar.gz -C /

reboot