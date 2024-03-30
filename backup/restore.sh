#!/bin/sh
# 定义颜色输出函数
red() { echo -e "\033[31m\033[01m[WARNING] $1\033[0m"; }
green() { echo -e "\033[32m\033[01m[INFO] $1\033[0m"; }
yellow() { echo -e "\033[33m\033[01m[NOTICE] $1\033[0m"; }
blue() { echo -e "\033[34m\033[01m[MESSAGE] $1\033[0m"; }
light_magenta() { echo -e "\033[95m\033[01m[NOTICE] $1\033[0m"; }
light_yellow() { echo -e "\033[93m\033[01m[NOTICE] $1\033[0m"; }

restore() {
    mkdir -p /tmp/upload/backup/
    # 检查backup.tar.gz文件是否存在
    if [ -f /tmp/upload/backup.tar.gz ]; then
        tar -xzvf /tmp/upload/backup.tar.gz -C /tmp/upload/backup
        cd /tmp/upload/backup
        # 恢复软件源
        cp distfeeds.conf /etc/opkg/distfeeds.conf
        # 恢复已安装列表
        opkg update
        cat packages-list.txt | cut -f 1 -d ' ' | xargs opkg install
        # 恢复/overlay 配置
        tar -xzvf overlay_backup.tar.gz -C /
        # 恢复/etc 配置
        tar -xzvf etc_backup.tar.gz -C /
        green "恢复已完成, 系统正在重启....."
        reboot
    else
        # 如果文件不存在，提醒用户并退出脚本
        light_magenta "请将恢复文档backup.tar.gz 上传到 /tmp/upload 目录 再重试。"
        exit 1
    fi
}

restore
