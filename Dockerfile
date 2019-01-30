from ubuntu:latest
LABEL maintainer="pallav ladekar"
RUN apt-get update -y && apt-get install wget -y && apt-get install net-tools -y
WORKDIR /home/ubuntu

RUN wget http://download.redis.io/releases/redis-5.0.3.tar.gz

RUN tar -xvzf redis-5.0.3.tar.gz
WORKDIR /home/ubuntu/redis-5.0.3
RUN apt-get install make -y && apt-get install build-essential -y && apt-get install gcc -y 
RUN make
RUN make install
WORKDIR /home/ubuntu/redis-5.0.3/src

COPY ./redis-master.sh  redis-master.sh
RUN chmod +x redis-master.sh

COPY ./redis-slave.sh  redis-slave.sh
RUN chmod +x redis-slave.sh

COPy ./main-script.sh main-script.sh
RUN chmod +x main-script.sh
#CMD ["/bin/bash", "/home/ubuntu/redis-5.0.3/src/main-script.sh"]

#ENTRYPOINT ["sudo", "-E", "/bin/bash", "-c", "./main-script.sh"]

