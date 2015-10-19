#!/bin/bash
echo 'Start Wifi Auto Reconnect Script'

if ! [ "$(ping -c 4 google.com)" ] && [ "$(ping -c 4 yahoo.com)"]; then

	ech 'No Wifi connection. Restarting Wifi ...'
	
    sudo /sbin/ifdown wlan0
    sudo /sbin/ifup wlan0

fi