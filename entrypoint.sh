#!/bin/bash

cd /opt/apacheds-2.0.0.AM26/bin
./apacheds.sh default start
sleep 5

while true;do
    ./apacheds.sh status | grep 'not running' && exit 1
    sleep 600
done

