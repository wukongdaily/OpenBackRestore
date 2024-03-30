#!/bin/sh
mkdir -p /tmp/upload/backup
cd /tmp/upload/backup
cp /etc/opkg/distfeeds.conf distfeeds.conf 
opkg list-installed > packages-list.txt
tar -czvf overlay_backup.tar.gz /overlay
tar -czvf etc_backup.tar.gz --exclude='/etc/config/wireless' /etc
tar -czvf backup.tar.gz distfeeds.conf packages-list.txt overlay_backup.tar.gz etc_backup.tar.gz
rm -rf distfeeds.conf packages-list.txt overlay_backup.tar.gz etc_backup.tar.gz
