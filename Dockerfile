FROM ubuntu:14.04
MAINTAINER Ryan Fowler <rwfowler@gmail.com>

RUN apt-get -y update
RUN apt-get install -y --no-install-recommends openjdk-7-jdk
RUN apt-get install -y curl

ENV JENKINS_HOST localhost
ENV JENKINS_PORT 8080
ENV SLAVE_NAME slave_n
RUN useradd --create-home jenkins
USER jenkins
ADD ./start /start
CMD /start
