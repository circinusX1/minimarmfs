#!/bin/bash -x
#
# Start the wireless network....
#

case "$1" in
  start)
 	echo "Starting AP mode..."
	rm /tmp/isalive
	if [ `pidof wpa_supplicant` ]; then
		/usr/sbin/wpa_cli -p/var/run/wpa_supplicant terminate
	fi
	if [ `pidof wpa_cli` ]; then
		/usr/sbin/wpa_cli -p/var/run/wpa_supplicant quit
	fi
	lsmod | grep dhd
	if [ $? -eq 1 ]; then
		insmod /root/wifi/dhd.ko firmware_path="/root/wifi/fw_prod.bin" nvram_path="/root/wifi/nvram.conf" iface_name=wlan0 dhd_sdiod_drive_strength=8
	fi
	set_rgb 127 20 73 0 0 0 flash 250000
	sleep 2
	wl mpc 0
	wl down
	wl ap 1
	wl channel 8
	wl wsec 0
	wl wpa_auth 0
	wl maxassoc 2
	wl up

	hwaddr="$(ifconfig wlan0 | head -1 | egrep -o '([0-9A-F]{2}:){5}[0-9A-F]{2}')"
	ssid="WINKHUB-$(printf "%s" "`date +%s`" | sed 's/://g;s/.*\(......\)/\1/')"

	wl ssid "$ssid"
	ifconfig wlan0 192.168.0.1
	pidof udhcpd
	if [ $? ]; then
		udhcpd -S /etc/udhcpd.conf
	fi
	sleep 2
	#Check to see if the wpa_supplicant.conf in /database is present
	#if [ ! -e /database/wpa_supplicant.conf ]; then
	#	rm /database/wpa_supplicant.conf
	#fi
        touch /tmp/ap_mode
	;;
  stop)
	echo -n "Stopping AP mode network..."
	sleep 2
	wl mpc 0
	wl down
	wl ap 0
	wl up
	pidof udhcpd
	if [ $? -eq 0 ]; then
		kill -9 `pidof udhcpd`
	fi
	rm -rf /tmp/ap_mode
	;;
  restart|reload)
	"$0" stop
	"$0" start
	;;
  *)
	echo "Usage: $0 {start|stop|restart}"
	exit 1
esac

exit $?

