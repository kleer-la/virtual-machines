#!/usr/bin/env bash

sudo apt-get -y update

sudo apt-get install -y linux-headers-$(uname -r) build-essential dkms
sudo apt-get install -y curl git vim leafpad firefox
sudo apt-get install -y software-properties-common

sudo apt-get upgrade -y

# rvm, ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source "$HOME/.rvm/scripts/rvm"

rvm install 2.1

# native extensions dependecies
sudo apt-get install -y libcurl3-dev libxml2-dev libpq-dev
sudo apt-get install -y gem

sudo apt-get install -y gedit-common/trusty
sudo apt-get install -y gedit/trusty
sudo apt-get install -y gedit-plugins/trusty

echo '@setxkbmap -option grp:alt_shift_toggle "es, us"' | sudo tee -a /etc/xdg/lxsession/Lubuntu/autostart

cd ~
mkdir csd
cd ~/csd
git clone https://github.com/kleer-la/template-ruby-sinatra.git template
