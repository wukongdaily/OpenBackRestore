#!/bin/sh

mkdir -p /tmp/upload/backup

# 检查backup.tar.gz文件是否存在
if [ -f /tmp/upload/backup/backup.tar.gz ]; then
    tar -xzvf /tmp/upload/backup/backup.tar.gz -C /tmp/upload/backup/
    cd /tmp/upload/backup/
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
else
    # 如果文件不存在，提醒用户并退出脚本
    echo "请将恢复文档backup.tar.gz 上传到 /tmp/upload/backup 目录 再重试。"
    exit 1
fi
