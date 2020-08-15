#!/bin/ash -x
if [ "b" == $1 ]; then
  wifi_mode="-r 11"
elif [ "g" == $1 ]; then
  wifi_mode="-r 54"
elif [ "n" == $1 ]; then
  wifi_mode="-m 7"
fi

wl country ALL
wl band b
wl channel $2
wl scansuppress 1
wl nrate $wifi_mode
wl txpwr 50
#wl phy_forcecal 1
wl pkteng_start 00:11:22:33:44:55 rxwithack
