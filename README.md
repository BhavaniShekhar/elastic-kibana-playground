This playground built based on the docker concept of containerization. ELK provides us latest version of Docker images at this link
https://www.docker.elastic.co/
# Prerequisites to use this ELK playground project
Git client such as git bash or git installed VM/box
You must have a docker install VM/box
You must have basics of Docker and docker-compose concepts

If you want this project you need to run the 
```Bash
git clone https://github.com/BhavaniShekhar/elastic-kibana-playground.git
cd elastic-kibana-playground
```
# elasticsearch, kibana, my playground

## How to play

Using latest version of docker engine, run the following docker-compose command

```Bash
$ docker-compose up -d
```
This docker-compose command will pull the three images and make them Up and running.
1. elasticsearch
2. fluentd
3. Kibana
