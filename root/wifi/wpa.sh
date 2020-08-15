#!/bin/ash -x
/usr/sbin/wpa_supplicant -iwlan0 -Dwext -c/root/wifi/wpa_supplicant.conf &
udhcpc -i wlan0
