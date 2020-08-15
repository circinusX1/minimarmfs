#!/bin/ash 
WL_MOD="/root/wifi/dhd.ko"
if [ "debug" == "$1" ]; then
  WL_MOD="/root/wifi/dhd-debug.ko"
fi
insmod ${WL_MOD} firmware_path="/root/wifi/fw_mfg.bin" nvram_path="/root/wifi/nvram.conf" iface_name=wlan0 dhd_sdiod_drive_strength=8
sleep 2
/root/wifi/wl mpc 0
/root/wifi/wl up
#/root/wifi/wifi_carrier.sh
