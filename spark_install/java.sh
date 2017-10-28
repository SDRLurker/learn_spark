#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz"
tar xzf jdk-8u151-linux-x64.tar.gz

rm -rf jdk
ln -s jdk1.8.0_151 jdk

rm -rf $HOME/apps/jdk-8u151-linux-x64.tar.gz

JAVA_HOME=$HOME/apps/jdk
echo "export JAVA_HOME=$HOME/apps/jdk" >> ~/.bash_profile
echo "export PATH=${JAVA_HOME}/bin:$PATH" >> ~/.bash_profile

source ~/.bash_profile
