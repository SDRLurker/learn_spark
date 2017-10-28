#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget http://apache.mirror.cdnetworks.com/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -xzvf apache-maven-3.5.0-bin.tar.gz

rm -rf maven
ln -s apache-maven-3.5.0 maven

rm -rf $HOME/apps/apache-maven-3.5.0-bin.tar.gz

M2_HOME=$HOME/apps/maven
echo "export M2_HOME=$HOME/apps/maven" >> ~/.bash_profile
echo "export PATH=${M2_HOME}/bin:\$PATH" >> ~/.bash_profile
