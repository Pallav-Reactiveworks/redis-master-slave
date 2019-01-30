 #!/bin/bash
mode="protected-mode no"
sed -i '/protected-mode yes/c\'"$mode"  /home/ubuntu/redis-5.0.3/redis.conf
cd /home/ubuntu/redis-5.0.3/src
./redis-server --protected-mode no  
