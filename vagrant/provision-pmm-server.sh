#!/bin/bash 

sudo yum install -y telnet vim wget screen net-tools epel-release git
sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo docker pull percona/pmm-server:2

sudo docker create --volume /srv \
    --name pmm-data \
    percona/pmm-server:2 /bin/true

sudo docker run --detach --restart always \
    --publish 443:443 \
    --volumes-from pmm-data \
    --name pmm-server \
    percona/pmm-server:2
