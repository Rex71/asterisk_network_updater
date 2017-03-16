#!/bin/bash
dat=$(date +"%m_%d_%Y - %H:%M:%S")
ext=$(wget http://ipinfo.io/ip -qO -    )
echo "externaddr=$ext" > /etc/asterisk/sip_nat.conf
echo "localnet=XXX.XXX.XXX.XXX/24" >> /etc/asterisk/sip_nat.conf
sleep 2
sudo asterisk -rx "sip reload" echo >> /var/log/ipchecker.log
echo "IP $ext is set at $dat" >> /var/log/ipchecker.log
exit 0
