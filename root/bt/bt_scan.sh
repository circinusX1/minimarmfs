#!/bin/ash -x
hciconfig hci0 up
sleep 1
hcitool -i hci0 scan > /tmp/bt_scan.log
