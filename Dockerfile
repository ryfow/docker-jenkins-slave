FROM ubuntu:14.04
MAINTAINER Ryan Fowler <rwfowler@gmail.com>

RUN apt-get -y update
RUN apt-get install -y openjdk-7-jdk
ADD ./start /start
ENV JENKINS_HOST localhost
ENV JENKINS_PORT 8080
ENV SLAVE_NAME slave_n
CMD start
