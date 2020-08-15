#!/bin/ash -x
insmod /root/bt/compat.ko
insmod /root/bt/6lowpan_iphc.ko
insmod /root/bt/bluetooth.ko
insmod /root/bt/hci_uart.ko
sleep 2
BDAddr=$(cat /mfgtests/sdk/support/bd_addr)
brcm_patchram_plus --no2bytes --tosleep 100000 --use_baudrate_for_download --baudrate 4000000 --enable_hci --patchram /root/bt/BCM4334B0_002.001.013.0271.0274.hcd --bd_addr $BDAddr /dev/ttymxc2 & 
