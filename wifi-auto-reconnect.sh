#!/bin/bash

if ! [ "$(ping -c 4 google.com)" ] && [ "$(ping -c 4 yahoo.com)"]; then
    nmcli nm wifi off
    nmcli nm wifi on
fi