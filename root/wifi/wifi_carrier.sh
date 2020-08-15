#!/bin/ash -x
if [ "b" == $1 ]; then
  wifi_mode="-r 11"
  tx_power="50"
elif [ "g" == $1 ]; then
  wifi_mode="-r 54"
  tx_power="50"
elif [ "n" == $1 ]; then
  wifi_mode="-m 7"
  tx_power="40"
fi

wl country ALL
wl band b
wl channel $2
wl scansuppress 1
wl nrate $wifi_mode
wl txpwr $tx_power
wl phy_forcecal 1
wl pkteng_start 00:11:22:33:44:55 tx 100 1024 0
