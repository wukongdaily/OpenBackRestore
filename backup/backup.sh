#!/bin/sh
mkdir -p /tmp/upload/backup
cd /tmp/upload/backup
cp /etc/opkg/distfeeds.conf distfeeds.conf 
opkg list-installed > packages-list.txt
tar -czvf overlay_backup.tar.gz /overlay
tar -czvf etc_backup.tar.gz --exclude='/etc/config/wireless' /etc