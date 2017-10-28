#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget  https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz
tar -xzvf spark-2.2.0-bin-hadoop2.7.tgz

rm -rf spark
ln -s spark-2.2.0-bin-hadoop2.7 spark

rm -rf $HOME/apps/spark-2.2.0-bin-hadoop2.7.tgz

SPARK_HOME=$HOME/apps/spark
echo "export SPARK_HOME=$HOME/apps/spark" >> ~/.bash_profile
echo "export PATH=${SPARK_HOME}/bin:$PATH" >> ~/.bash_profile
