#!/bin/bash

while true;do
    ping -c 1 dockerize-ambari-db-1 >/dev/null 2>&1 && break
    echo "cannot contact dockerize-ambari-db-1 sleep 10s"
    sleep 10
done

ansible-playbook /root/ansible/post_ambari_server.yml
ambari-server start
bash -c "trap : TERM INT; sleep infinity & wait"
