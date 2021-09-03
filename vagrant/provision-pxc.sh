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
sudo percona-release enable pxc80
sudo percona-release enable tools 
sudo yum -y install Percona-XtraDB-Cluster-57 pmm2-client percona-toolkit sysbench 
echo "Downloading PXC 8..."
wget -q https://downloads.percona.com/downloads/Percona-XtraDB-Cluster-LATEST/Percona-XtraDB-Cluster-8.0.23/binary/redhat/7/x86_64/Percona-XtraDB-Cluster-8.0.23-rd3b9a1d-el7-x86_64-bundle.tar

echo "Done setting up $(hostname)!"
