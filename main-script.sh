#!/bin/bash
name1=$name
if [ "$name1" = "redis-master" ]; then
cd /home/ubuntu/redis-5.0.3/src 
./redis-master.sh
else
cd /home/ubuntu/redis-5.0.3/src
./redis-slave.sh
fi
