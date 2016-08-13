#!/bin/bash -x

sudo apt-get autoremove && sudo apt-get clean

sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY

cat /dev/null > ~/.bash_history && history -c
