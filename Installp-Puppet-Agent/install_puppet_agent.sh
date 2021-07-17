#!/bin/bash
set -euo pipefail 

#Enable the Puppet platform repository.
# Using YUM
# URL naming convention - https://yum.puppet.com/<PLATFORM_NAME>-release-<OS ABBREVIATION>-<OS VERSION>.noarch.rpm
# To enable the Enterprise Linux 7 repository:
sudo rpm -Uvh https://yum.puppet.com/puppet7-release-el-7.noarch.rpm

# install
sudo yum install puppet-agent -y

# enable & start 
sudo systemctl enable --now puppet

# status
sudo systemctl status puppet

