FROM ubuntu:16.04
MAINTAINER andrew.strozyk@life.church

COPY ./build.sh /scripts/build.sh

RUN /scripts/build.sh
