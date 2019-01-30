#!/bin/bash

#!/bin/bash
mode="protected-mode no"
sed -i '/protected-mode yes/c\'"$mode"  /home/ubuntu/redis-5.0.3/redis.conf

ip="172.17.0.2"
port="6379"
# replicaof <masterip> <masterport>

sed -i '/# replicaof <masterip> <masterport>/c\'"replicaof $ip $port"  /home/ubuntu/redis-5.0.3/redis.conf

cd /home/ubuntu/redis-5.0.3/src
./redis-server ../redis.conf  --protected-mode no

