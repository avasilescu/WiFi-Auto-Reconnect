#!/bin/bash

if ! [ "$(ping -c 4 google.com)" ] && [ "$(ping -c 4 yahoo.com)"]; then

    sudo /sbin/ifdown wlan0
    sudo /sbin/ifup wlan0

fi