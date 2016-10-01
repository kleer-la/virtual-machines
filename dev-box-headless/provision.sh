#!/bin/bash -x

export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y update
sudo apt-get -y install git libcurl3-dev libxml2-dev libpq-dev
sudo apt-get -y autoremove

su -c "source /vagrant/user-config.sh" vagrant
