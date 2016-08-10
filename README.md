# linux_java_dev_env
CentOS Linux Environment for Java Web Development

# Software included  
* Java  
* Eclipse  
* Sublime  
* Chrome  
* SQuirreL SQL Client  
* JMeter  
* Maven  
* Node & NPM  
* Docker  
* GNOME UI  
* Unzip  
* Ansible  

# Installation Steps

## Prerequisites
* [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Install Vagrant](https://www.vagrantup.com/downloads.html)
* Clone the repository

## Run the Vagrant
    vagrant up
Restart the machine after initial "vagrant up" is completed to have the GUI load  

Note: If there is an issue with "vagrant up" (ex. an application did not download successful) 

run:

	vagrant provision

# Info

User: vagrant  
Password: vagrant

sudo password: vagrant

Root User: root  
Root Password: vagrant
	
# Troubleshooting
**Issue:** Failure during one of the stages of installing / updating software  
**Resolution:**

    vagrant provision
Note: need to have VM running via

    vagrant up    
before trying
	
    vagrant provision

**Issue:** Could not find shared files, ie. "share" directory from the Host to the Client (VM)  
**Resolution:**

    vagrant halt
	vagrant up
	
	
# Changing Linux Distribution
Currently the provisining supports CentOS.

If you need another Linux Distro then look for: ## OS SPECIFIC: change this for different distro  
There are 6 places forsure that would need refactoring:  
* OS (Vagrantfile: config.vm.box)
* ansible (provision.sh)
* unzip (startup role)
* chrome (chrome role)
* git (git role)
* gui (Gnome: gui role)