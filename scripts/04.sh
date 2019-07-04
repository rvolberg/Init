#!/bin/bash

# mailutils | postfix
# ajouter ce script a la crontab
# 0 0 * * * [script]
# crontab -l lister tache
# crontab -e editer liste


md5sum /etc/crontab > /home/cron_tmp
echo "creation /home/cron_tmp"

if [ /etc/crontab.md5 ]
then
    if [ "$(diff /home/cron_tmp /etc/crontab.md5)" != "" ]
	then
		echo "crontab a ete modifie" | mail -s "crontab" root@debian.com
		md5sum /etc/crontab > /etc/crontab.md5
		echo "/etc/crontab.md5 mit a jour"
    else
		echo "pas de modification sur la crontab"
    fi
else
    echo "creation /etc/crontab md5sum"
    md5sum /etc/crontab > /etc/crontab.md5
fi
