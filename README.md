# asterisk_network_updater
Linux based system script to update the external network settings for asterisk. 
Set "#include sip_nat.conf" in /etc/asterisk/sip.conf.
Replace XXX.XXX.XXX.XXX/xx with a valid internal IP range (192.168.1.0/24).
Schedule task using cron to run hourly ( */59 * * * * /path/to/ipchecker.sh).
