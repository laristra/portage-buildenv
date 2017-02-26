FROM ubuntu:latest
#to run this script: docker build -t docker-portage .
#to start the container: docker run -h simpleportage -it -v /Users:/Users --rm docker-portage
#to run as root in it: docker ls; docker exec -itu root <id> bash

RUN apt-get update && apt-get install -y \
cmake \
libopenmpi-dev openmpi-bin \
libboost-dev \
python-pip \
g++

RUN groupadd -r portage
RUN useradd -r -m -g portage portage
USER portage
WORKDIR /home/portage
RUN pip install --user codecov

