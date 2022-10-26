# OpenEDU

The project is built as in a form of several microservices running together within a docker-compose environment 
(should be replced with Kubernetes for production).
Docker-compose also contains several standart packages such as postgres and elasticsearch, we highly recommend swith to
fully-managed versions of them in case the whole infrastructure will be located in the commertial cloud (e.g. Azure)

Architecture overview:

![architecture](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/blob/main/arc.jpg?raw=true)


- [/src](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/blob/main): has all code. 
It has individual folders corresponding to separate microservices. 
Some microservices are just made for one time run, but can be extendet to be triggered, 
for example by Queing Services (RabbitMQ, Pub/Sub etc.)

- [/test](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/blob/main): docker-compose file.
It can be run anywhere and should start the basic infrastructure of our project with the main API running on:
localhost:8087

API Endpoints: ...to be continued...