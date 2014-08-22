# Ryfow's Jenkins Slave Docker Image

This Docker image downloads slave.jar from a linked jenkins, and then
runs the slave agent.

If you have `ryfow/jenkins` running with a container name of `jenkins`,
then you would start this slave with the following command:

```
docker -d --link jenkins:jenkins ryfow/docker-jenkins-slave
```
