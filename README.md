This playground built based on the docker concept of containerization. ELK provides us latest version of Docker images at this link
https://www.docker.elastic.co/
# Prerequisites to use this ELK playground project
Git client such as git bash or git installed VM/box
You must have a docker installed VM/box
You must have basics of Docker and docker-compose concepts

If you want this project you need to run the 
```Bash
git clone https://github.com/BhavaniShekhar/elastic-kibana-playground.git
cd elastic-kibana-playground
```
# Elasticsearch, Kibana, my playground

## How to play this Kibana playground
Step1: Login to the https://labs.play-with-docker.com/ with the docker login. Which will be having all the pre-requisites - git, docker, docker-compose ready to use.

Click on the 'Add NEW INSTANCE' in the left pane to get the SSH connection to docker lab sandbox environment. 
This will be having the git client already installed instance.


Using latest version of docker engine, run the following docker-compose command

```Bash
$ docker-compose up -d
```
# Set the Max 
Enter the following line in /etc/sysctl.conf file with the vm.max_map_count value as 262144, this is production setup. This is used to get this effected permanently
```Bash
vi /etc/sysctl.conf
vm.max_map_count=262144
```
For temporary fix is on your playground you can run
```bash
sysctl -w vm.max_map_count=262144
```

# Confirmation
To validate the above execution is successful by running the follwing:

```Bash
$ docker-compose ps 
 Name                Command               State                 Ports               
-------------------------------------------------------------------------------------
es        /usr/local/bin/docker-entr ...   Up      0.0.0.0:9200->9200/tcp, 9300/tcp  
fluentd   tini -- /bin/entrypoint.sh ...   Up      0.0.0.0:24224->24224/tcp, 5140/tcp
kibana    /usr/local/bin/dumb-init - ...   Up      0.0.0.0:5601->5601/tcp         
```

The fluentd provides the log aggregation layer that allows you to filter, buffer, and route your logs from various applcations and platforms to a backend of your choosing. The fluentd community likes its performant, reliable, and flexible.
Fluentd is marginally more performant than Logstash. Only noticeable if you're looking at logs in near real time. Either solution is a win.


This docker-compose command will pull the three images and make them Up and running.
1. elasticsearch
2. fluentd
3. Kibana

# References
Fluentd https://hub.docker.com/r/fluent/fluentd/
Elastic Search with Docker https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-cli-run-prod-mode
