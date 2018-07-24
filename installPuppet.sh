#!/bin/sh

sudo apt update
sudo apt install -y puppet

sudo gem install librarian-puppet

cd /vagrant
sudo librarian-puppet install --path=/etc/puppet/modules
cd -