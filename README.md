# Workshop: MySQL and Percona XtraDB Cluster (PXC)

This repo contains the slides and the scripts used in the workshop.

Percona XtraDB Cluster is a database clustering solution for MySQL. It ensures high availability, prevents downtime and data loss, and provides linear scalability for a growing environment.

We will primarily use PXC version 5.7 in this tutorial as it is still widely used but everything discussed in this workshop is valid for PXC 8 and will be highlighted when any difference exists. Alos, we will port the cluster by the end of this workshop to understand the upgrade and migration process from PXC 5.7 to PXC 8 including the risks and the precautions we need to take.

Note that Percona XtraDB Cluster fully compatible with MySQL Server Community Edition and Percona Server of its version, for example, PXC 8.0 is fully compatible with MySQL Server Community Edition 8.0 and Percona Server for MySQL 8.0.

## Requirements

We'll use [HashiCorp Vagrant[2]](https://www.vagrantup.com/) with [CentOS 7[3]](https://www.centos.org/) in this tutorial to simulate a multi-node environment. Download and install vagrant isn't a complex task but it is time consuming, please make sure you have it installed and working properly with all the needed components:

- Download: https://www.vagrantup.com/downloads
- How to install: https://www.vagrantup.com/docs/installation

After install and configure vagrant clone this repository and run the below commands:

```bash
cd vagrant
vagrant up
```

It will create 5 virtual machines:

- PMM server
- PXC nodes 1, 2 and 3
- Client box

## License

This material is distributed under Creative Commons License and you can find the full license [here [1]](https://github.com/elchinoo/tutorial-pxc/blob/main/LICENSE).


<br />
[1] https://github.com/elchinoo/tutorial-pxc/blob/main/LICENSE <br>
[2] https://www.vagrantup.com/ <br>
[3] https://www.centos.org/ <br>