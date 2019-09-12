# docker
This repository is to just demonstarte a lightweight deployment of microservice on Docker. 
Steps:

> git clone https://github.com/arunksingh16/docker
- Create docker file 
- Lets build docker image and tag it
> docker build  . -t microservice:v1
- List images
> docker images
- Running the image as a container in same terminal
> docker run -p 8080:8080 -t microservice:v1
- Running the image as a container in background and give your easy name
> docker run -d -p 8085:8080 --name arun microservice:v2
- Delete all stopped containers (including data-only containers) 
> docker rm $(docker ps -a -q)
- Checking logs 
> docker logs arun

