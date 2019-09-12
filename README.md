# docker
This repository is to just demonstarte a lightweight deployment of microservice on Docker. 
Steps:

> git clone https://github.com/arunksingh16/docker
- Create docker file 
- Lets build docker image and tag it
> docker build  . -t microservice:v1
> docker images
> docker run -p 8080:8080 -t microservice:v1
