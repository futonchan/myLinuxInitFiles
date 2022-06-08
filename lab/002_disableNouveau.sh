#!/bin/sh
count=`lsmod | grep nouveau | wc -l`
if [ $count -gt 0 ]
then
    echo "nouveauドライバの動作を確認しました。無効化します"
    sudo touch /etc/modprobe.d/blacklist-nouveau.conf
    echo -e "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
    reboot
else
    echo "nouveauドライバ無効化済のため、スキップ"
fi
