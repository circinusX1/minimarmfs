#!/bin/bash -x
IFACE=$1
EVENT=$2

case $EVENT in

  CONNECTED) echo "Received event: $EVENT"
    udhcpc -i $IFACE -t 15 -b &
    set_rgb 127 83 0 0 0 0 flash 500000
  ;;

  DISCONNECTED) echo "Received event: $EVENT"
    kill -9 $(pidof udhcpc)
    set_rgb 127 127 0 0 0 0 flash 500000
  ;;

  *) echo "Strange event: $EVENT"
  ;;

esac

exit $?

