#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz"
tar xzf jdk-8u152-linux-x64.tar.gz

rm -rf jdk
ln -s jdk1.8.0_152 jdk

rm -rf $HOME/apps/jdk-8u152-linux-x64.tar.gz

JAVA_HOME=$HOME/apps/jdk
echo "export JAVA_HOME=$HOME/apps/jdk" >> ~/.bashrc
echo "export PATH=${JAVA_HOME}/bin:$PATH" >> ~/.bashrc

source ~/.bashrc
