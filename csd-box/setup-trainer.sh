#!/bin/bash

#sudo apt-get install -y 
sudo apt-get install -y default-jre
sudo apt-get install -y rapidsvn kesvn meld

# Ultima version de Jenkins
mkdir jenkins && cd jenkins
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# arranco Jenkins
java -jar jenkins.war

# Instalo plugins
targetUrl=http://localhost:8080/
wget ${targetUrl}jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s ${targetUrl} install-plugin subversion git github greenballs
java -jar jenkins-cli.jar -s ${targetUrl} restart

# Instalo plugins

# cierro Jenkins
java -jar jenkins-cli.jar -s ${targetUrl} shutdown
cd ..
