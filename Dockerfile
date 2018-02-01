#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Andrew Odewahn "odewahn@oreilly.com"
ENV HOME /var/jenkins

RUN addgroup -S -g 10000 jenkins
RUN adduser -S -u 10000 -h $HOME -G jenkins jenkins
LABEL Description="This is a base image, which provides the Jenkins agent executable (slave.jar)" Vendor="Jenkins project" Version="3.16"

ARG VERSION=3.16
ARG AGENT_WORKDIR=/Users/ajeet/CICD/nodes/JenkinsSlave



RUN apt-get update
RUN apt-get install -y python python-pip wget
#RUN pip install Flask

#ADD hello.py /home/hello.py

#WORKDIR /var/jenkins/workspace/PipeLine Example
RUN -v /var/jenkins_home/workspace/:/root/workspace