#!/bin/sh
red() { echo -e "\033[31m\033[01m[WARNING] $1\033[0m"; }
green() { echo -e "\033[32m\033[01m[INFO] $1\033[0m"; }
yellow() { echo -e "\033[33m\033[01m[NOTICE] $1\033[0m"; }
blue() { echo -e "\033[34m\033[01m[MESSAGE] $1\033[0m"; }
light_magenta() { echo -e "\033[95m\033[01m[NOTICE] $1\033[0m"; }
light_yellow() { echo -e "\033[93m\033[01m[NOTICE] $1\033[0m"; }

backup() {
    # 检查是否传入自定义路径
    local backup_path=${1:-/tmp/upload}
    mkdir -p "$backup_path"
    cd "$backup_path" || exit
    # 备份软件源配置
    cp /etc/opkg/distfeeds.conf distfeeds.conf
    # 备份已安装软件列表
    opkg list-installed > packages-list.txt
    tar -czvf overlay_backup.tar.gz /overlay
    # 将所有备份打包成一个文件
    tar -czvf backup.tar.gz distfeeds.conf packages-list.txt overlay_backup.tar.gz
    # 清理临时文件
    rm -rf distfeeds.conf packages-list.txt overlay_backup.tar.gz
    green "系统备份文件已保存至 $backup_path/backup.tar.gz"
    light_magenta "请及时下载保存到电脑 供恢复时使用"
}

backup "$1"
