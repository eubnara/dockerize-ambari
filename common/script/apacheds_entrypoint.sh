#!/bin/bash

cd /opt/apacheds/bin
./apacheds.sh default start
sleep 5

while true;do
    ./apacheds.sh status | grep 'not running' && exit 1
    sleep 600
done
