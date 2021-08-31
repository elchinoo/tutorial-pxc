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

- PMM server, named `pmm`;
- PXC nodes 1, 2 and 3, named `node1`, `node2`, `node3`;
- Client box, named `client`;

Vagrant uses SSH certificate and port redirects to SSH to the boxes. We can use the command `vagrant ssh <box_name>` from inside the vagrant folder to SSH into each box, for example:

```bash
$ vagrant ssh pmm
[vagrant@pmm-server ~]$ 
```

We can check the overal status with `vagrant status`:

```bash
$ vagrant status
Current machine states:

pmm                       running (virtualbox)
node1                     running (virtualbox)
node2                     running (virtualbox)
node3                     running (virtualbox)
client                    running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
```

Note that all commands shall be ran inside of the `vagrant` folder to work. If we attempt to run it outside the folder that has the machine definitions we get an error that would look like this:

```bash
$ vagrant status
A Vagrant environment or target machine is required to run this
command. Run `vagrant init` to create a new Vagrant environment. Or,
get an ID of a target machine from `vagrant global-status` to run
this command on. A final option is to change to a directory with a
Vagrantfile and to try again.
```

## License

This material is distributed under Creative Commons License and you can find the full license [here [1]](https://github.com/elchinoo/tutorial-pxc/blob/main/LICENSE).


<br />
[1] https://github.com/elchinoo/tutorial-pxc/blob/main/LICENSE <br>
[2] https://www.vagrantup.com/ <br>
[3] https://www.centos.org/ <br>