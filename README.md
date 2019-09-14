# docker
This repository is to just demonstarte a lightweight deployment of microservice on Docker. 
Steps:

> git clone https://github.com/arunksingh16/docker
- Create docker file 
- Lets build docker image and tag it
> docker build . -t microservice:v1
- List images
> docker images
- Running the image as a container in same terminal
> docker run -p 8080:8080 -t microservice:v1
- Running the image as a container in background and give your easy name
> docker run -d -p 8085:8080 --name arun microservice:v2
- List open port
> docker port arun
- Delete all stopped containers (including data-only containers) 
> docker rm $(docker ps -a -q)
- Checking logs 
> docker logs arun
- Check for processes running inside container
> docker top arun
- Check process on local desktop
> ps aux | grep java
- Stop the container
> docker stop <container_id>
- Start the container
> docker start <container_id>
- Inspect the container
> docker inspect <container_id>
- Checking stats
> docker stats
- Running interactive shell inside container
> docker run -it java:8 bash
- inspect image
> docker image inspect arun
- image history
> docker image inspect arun
- Docker tagging (To push an image to a private registry and not the central Docker registry you must tag it with the registry hostname)
> docker tag microservice:v2 arun161087/microservice:v2
- Before pushing in repository you need to login
> docker login
- Docker pushing the image in repository
> docker push arun161087/microservice:v2
- docker delete containers 
> docker rm <few unique digits from container id>
- Network
> docker network ls
- Container network details
> docket network inspect bridge
- N/w Create
> docker network create nw
- attch / network connect and disconnect option
> --network option
- volume concept
> docker run mysql --name arundb -d -e MYSQL_ROOT_PASSWORD=TrueGbcaknca, docker inspect <container> | grep -i volume
- vol
> docker volume ls
- verify the volume on local
  --------------------------------------
   docker volume inspect 808d026d9b49d63fa7c1fd90c36183a6726312b58c5b9da118258af4b4f30678
[
    {
        "CreatedAt": "2019-09-14T23:41:16Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/808d026d9b49d63fa7c1fd90c36183a6726312b58c5b9da118258af4b4f30678/_data",
        "Name": "808d026d9b49d63fa7c1fd90c36183a6726312b58c5b9da118258af4b4f30678",
        "Options": null,
        "Scope": "local"
    }
]
[node1] (local) root@192.168.0.68 ~
$ ls /var/lib/docker/volumes/808d026d9b49d63fa7c1fd90c36183a6726312b58c5b9da118258af4b4f30678/_data
#innodb_temp        binlog.000003       client-cert.pem     ib_logfile1         mysql.ibd           server-cert.pem     undo_002
auto.cnf            binlog.index        client-key.pem      ibdata1             performance_schema  server-key.pem
binlog.000001       ca-key.pem          ib_buffer_pool      ibtmp1              private_key.pem     sys
binlog.000002       ca.pem              ib_logfile0         mysql               public_key.pem      undo_001
[node1] (local) root@192.168.0.68 ~
