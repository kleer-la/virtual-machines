#!/bin/bash -x

export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y update

# remove uneeded packages
sudo apt-get remove -y vlc vlc-plugin-pulse vlc-data banshee brasero gimp gimp-data gthumb simple-scan
sudo apt-get remove -y thunderbird pidgin pidgin-data transmission-gtk transmission-common samba samba-common
sudo apt-get remove -y libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-math libreoffice-writer
sudo apt-get remove -y libreoffice-base-core libreoffice-common libreoffice-core libreoffice-emailmerge libreoffice-java-common

#sudo apt-get upgrade -y

sudo apt-get install -y curl vim
sudo apt-get install -y software-properties-common
sudo apt-get install -y linux-headers-$(uname -r) build-essential debhelper dkms
sudo apt-get install -y libcurl3-dev libxml2-dev libpq-dev

sudo apt-get install -y git rapidsvn meld

su -c "source /vagrant/user-config.sh" vagrant
