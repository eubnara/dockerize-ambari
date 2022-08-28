#!/bin/bash

if which ambari-agent ;then
   ambari-agent restart
fi
/usr/sbin/sshd -D
