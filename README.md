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
- Docker tagging (To push an image to a private registry and not the central Docker registry you must tag it with the registry hostname)
> docker tag microservice:v2 arun161087/microservice:v2
- Before pushing in repository you need to login
> docker login
- Docker pushing the image in repository
> docker push arun161087/microservice:v2
- docker delete containers 
> docker rm <few unique digits from container id>
