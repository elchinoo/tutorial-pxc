#!/bin/bash 

# Let's start disabling SELinux. PXC doesn't play well with it
sudo setenforce 0                                                                                                       
sudo sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config

# Install some useful apps
sudo yum install -y telnet vim wget screen net-tools epel-release git
sudo yum install -y yum-utils

# Install Percona repo and PXC
sudo yum -y install https://repo.percona.com/yum/percona-release-latest.noarch.rpm
sudo percona-release enable pxc-57
sudo percona-release enable tools 
sudo yum -y install Percona-Server-client-57 percona-toolkit sysbench 

echo "Done setting up $(hostname)!"
