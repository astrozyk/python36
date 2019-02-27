#!/bin/bash

apt-get update && apt-get -y upgrade
apt-get -y install apt-transport-https apt-utils build-essential ca-certificates curl gcc gnupg-agent lsb-release software-properties-common wget zlib1g-dev
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"
apt-get update && apt-get -y install docker-ce-cli
cd /opt && wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
cd /opt && tar -xvf Python-3.6.8.tgz
cd /opt/Python-3.6.8 && ./configure && make && make install
