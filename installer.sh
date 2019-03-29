#!/bin/bash

echo "Starting Installation"
echo "installing docker-CE"
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-cache madison docker-ce 
echo "which docker version you want to install?"
echo " Install a specific version using the version string from the second column, for example, 5:18.09.1~3-0~ubuntu-xenial"
read version


sudo apt-get update 
sudo apt-get install docker-ce=$version 
