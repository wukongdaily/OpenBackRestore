#!/bin/sh
red() { echo -e "\033[31m\033[01m[WARNING] $1\033[0m"; }
green() { echo -e "\033[32m\033[01m[INFO] $1\033[0m"; }
yellow() { echo -e "\033[33m\033[01m[NOTICE] $1\033[0m"; }
blue() { echo -e "\033[34m\033[01m[MESSAGE] $1\033[0m"; }
light_magenta() { echo -e "\033[95m\033[01m[NOTICE] $1\033[0m"; }
light_yellow() { echo -e "\033[93m\033[01m[NOTICE] $1\033[0m"; }

backup() {
    mkdir -p /tmp/upload/backup
    cd /tmp/upload/backup
    cp /etc/opkg/distfeeds.conf distfeeds.conf
    opkg list-installed >packages-list.txt
    tar -czvf overlay_backup.tar.gz /overlay
    tar -czvf etc_backup.tar.gz --exclude='/etc/config/wireless' /etc
    tar -czvf backup.tar.gz distfeeds.conf packages-list.txt overlay_backup.tar.gz etc_backup.tar.gz
    rm -rf distfeeds.conf packages-list.txt overlay_backup.tar.gz etc_backup.tar.gz
    green "系统备份文件已保存至 /tmp/upload/backup/backup.tar.gz"
    light_yellow "请及时下载保存到电脑,恢复时使用 系统——文件传输 上传至/tmp/upload目录,再调用恢复脚本即可"
}

backup
