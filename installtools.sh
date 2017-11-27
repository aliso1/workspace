#!/usr/bin/bash

sudo yum install -y  epel-release
sudo yum install -y  curl
sudo yum install -y  git
sudo yum install -y  ctnlm
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum install -y docker-ce
sudo yum install -y ansible
