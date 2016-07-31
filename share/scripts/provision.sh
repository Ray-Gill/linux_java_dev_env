#!/bin/bash

set -e
set -o pipefail

# Set the PATH variables, Ansible will add to this for applications needed onto PATH
echo "PATH=$PATH" > /etc/environment

# Check if ansible is installed, only install software if existing version does not match
if [ ! -f /home/vagrant/installed_software/ansible-2.1.0.0.txt ]; then

  ## OS SPECIFIC: change this for different distro
  echo "Add Ansible RPM"
  rpm -iUvh --replacepkgs https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
  echo "Install Ansible"
  yum -y install ansible-2.1.0.0
  ## END OS SPECIFIC
  
fi

echo "Run Ansible playbook"
ansible-playbook /home/vagrant/share/scripts/ansible/playbook/setupDev.yml

echo "refresh profile"
source /etc/profile

echo "refresh /etc/environment"
. /etc/environment