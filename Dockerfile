#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Andrew Odewahn "odewahn@oreilly.com"

RUN apt-get update
RUN apt-get install -y python python-pip wget
#RUN pip install Flask

#ADD hello.py /home/hello.py

#WORKDIR /home
docker run -t -d -u 502:20 -w "/var/jenkins/workspace/PipeLine Example" -v "/var/jenkins/workspace/PipeLine