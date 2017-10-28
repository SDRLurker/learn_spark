#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget http://www.scala-lang.org/files/archive/scala-2.12.3-1.tgz
tar xzf scala-2.12.3-1.tgz

rm -rf scala
ln -s scala-2.12.3-1 scala

SCALA_HOME=$HOME/apps/scala
echo "export SCALA_HOME=$HOME/apps/scala" >> ~/.bash_profile
echo "export PATH=${SCALA_HOME}/bin:\$PATH" >> ~/.bash_profile
