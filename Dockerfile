FROM ubuntu:latest
#to run this script: docker build -t docker-portage .
#to start the container: docker run -h simpleportage -it -v /Users:/Users --rm docker-portage
#to run as root in it: docker ls; docker exec -itu root <id> bash

RUN export http_proxy=http://proxyout.lanl.gov:8080;apt-get update && apt-get install -y \
#RUN apt-get update && apt-get install -y \
cmake \
libopenmpi-dev openmpi-bin \
libboost-dev \
g++
