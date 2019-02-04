# redis-master-slave
Clone the repository
build docker image using command  docker build -t image-name .

Now frist run Docker-container for   Redis-master

docker run -itd -e name=redis-master -p 7000:31225  image-name

after that you can any number of Redis-slave by running image for redis-slave as

docker run -itd -e master_ip=ip-of-redis-container --name redis-slave -p 7001:31225 image-name
