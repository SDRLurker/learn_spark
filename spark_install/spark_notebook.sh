#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget https://s3.eu-central-1.amazonaws.com/spark-notebook/tgz/spark-notebook-0.7.0-scala-2.11.8-spark-2.1.1-hadoop-2.7.3-with-hive.tgz
tar -xzvf spark-notebook-0.7.0-scala-2.11.8-spark-2.1.1-hadoop-2.7.3-with-hive.tgz

rm -rf spark-notebook
ln -s spark-notebook-0.7.0-scala-2.11.8-spark-2.1.1-hadoop-2.7.3-with-hive spark-notebook
