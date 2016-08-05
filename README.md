# linux_java_dev_env
Linux Environment for Java Development

# Installation Steps

## Prerequisites
* [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Install Vagrant](https://www.vagrantup.com/downloads.html)
* Clone the repository

## Run the Vagrant
    vagrant up
Restart the machine after initial "vagrant up" is completed to have the GUI load
Note: If there is an issue with "vagrant up" (ex. an application did not download successful) run:
    vagrant provision

# Info

User: vagrant
Password: vagrant

sudo password: vagrant

Root User: root	
Root Password: vagrant
	
# Troubleshooting
Issue: Failure during one of the stages of installing / updating software
Resolution:
    vagrant provision
Note: need to have VM running via "vagrant up" before trying a "vagrant provision"

# Changing Linux Distribution
Currently the provisining supports CentOS.

*Coming soon Ubuntu support.*

If you need Ubuntu look for: ## OS SPECIFIC: change this for different distro
There are 6 places that would need refactoring:
* OS (Vagrantfile: config.vm.box)
* ansible (provision.sh)
* unzip (startup role)
* chrome (chrome role)
* git (git role)
* gui (Gnome: gui role)