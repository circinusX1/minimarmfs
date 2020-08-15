#!/bin/ash -x
WL_MOD="dhd.ko"
if [ "debug" == "$1" ]; then
  WL_MOD="dhd-debug.ko"
fi
insmod /root/wifi/${WL_MOD} firmware_path="/root/wifi/fw_prod.bin" nvram_path="/root/wifi/nvram.conf" iface_name=wlan0 dhd_sdiod_drive_strength=8
sleep 2
/root/wifi/wl mpc 0
/root/wifi/wl up
sleep 2
/usr/sbin/wpa_supplicant -iwlan0 -Dwext -c/root/wifi/wpa_supplicant.conf &
