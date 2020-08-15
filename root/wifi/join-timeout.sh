#!/bin/ash -x
FILE=/database/token

sleep 90
if [ -f $FILE ];
then
   echo "File $FILE exists."
   `/root/wifi/run_ap.sh start`
else
   echo "File $FILE does not exist."
fi
