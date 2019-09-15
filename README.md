# docker
This repository is to just demonstarte a lightweight deployment of microservice on Docker. 
Steps:
- Prepare the system
> alias ll='ls -latr'
- Verify the docker setup 
> docker info
- Verify the docker version
> docker version
- Help
> docker help
- Clone the repository
> git clone https://github.com/arunksingh16/docker
- Create docker file 
- Lets build docker image and tag it
> docker build . -t microservice:v1
- List images
> docker images
- List process before running container
> ps aux
- Running the image as a container in same terminal (foreground)
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
=================================================================================
- Network
> docker network ls
- Container network details
> docket network inspect bridge
- N/w Create
> docker network create nw
- attach / network connect and disconnect option (--network option)
- Ex:
> docker run -it -d  --name my_container  busybox
- Ping google inside 
> docker exec -it my_container ping -w3 google.com
- Inspect the container for network
> docker inspect my_container
- Create a network 
> docker network create –-driver bridge new_nw 
- running ubuntu in this network 
> docker run –it –network=new_nw ubuntu:latest /bin/bash
=================================================================================
- volume concept
> docker volume ls
- Running a apache mounted a volumenr
> docker run -dit --name arunWeb1 -p 8090:80 -v /root/website/:/usr/local/apache2/htdocs/ httpd:2.4
- verify the volume on local
> docker volume inspect 808d026d9b49d63fa7c1fd90c36183a6726312b58c5b9da118258af4b4f30678

