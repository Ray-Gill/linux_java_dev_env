#!/bin/bash

set -e
set -o pipefail

# Set the PATH variables, Ansible will add to this for applications needed onto PATH
echo "PATH=$PATH" > /etc/environment

## OS SPECIFIC: change this for different distro
echo "Add Ansible RPM"
rpm -iUvh --replacepkgs https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
echo "Install Ansible"
yum -y install ansible
## END OS SPECIFIC

echo "Run Ansible playbook"
ansible-playbook /home/vagrant/share/scripts/ansible/playbook/setupDev.yml

echo "refresh profile"
source /etc/profile

echo "refresh /etc/environment"
. /etc/environment