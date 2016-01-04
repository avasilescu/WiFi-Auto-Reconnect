#!/bin/bash
echo 'Start Wifi Auto Reconnect Script'
NOW=$(date +"%m-%d-%y - %T")
echo $NOW

Target = google.com

if ping -c 4 $Target &> /dev/null; then
	echo 'Wifi connection is up. Restart not required.'
else
	echo 'No Wifi connection. Restarting Wifi ...'
	sudo /sbin/ifdown wlan0
	sudo /sbin/ifup wlan0
fi
