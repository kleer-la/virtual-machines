#!/bin/bash -x

# rvm
echo "rvm_install_on_use_flag=1" >> $HOME/.rvmrc
echo "rvm_project_rvmrc=1"       >> $HOME/.rvmrc
echo "rvm_trust_rvmrcs_flag=1"   >> $HOME/.rvmrc

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#\curl -sSL https://get.rvm.io | bash -s stable
curl -L https://get.rvm.io | bash -s stable --autolibs=4
source "$HOME/.rvm/scripts/rvm"
[[ -s "$rvm_path/hooks/after_cd_bundle" ]] && chmod +x $rvm_path/hooks/after_cd_bundle

rvm autolibs enable
rvm requirements
rvm reload

# ruby
_RUBY_VERSION="ruby-2.3.0"
rvm install $_RUBY_VERSION
rvm use $_RUBY_VERSION --default

sudo apt-get install -y gem

mkdir ~/csd && cd ~/csd
git clone https://github.com/kleer-la/template-ruby-sinatra.git template
