#!/bin/ash -x
FILE=/tmp/isalive

sleep 90
if [ -f $FILE ];
then
   echo "Network is up. Not launching ap_mode again..."
else
   echo "File $FILE does not exist. Launching ap_mode"
   `/root/wifi/run_ap.sh start`
fi
