#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget http://apache.tt.co.kr/hadoop/common/hadoop-2.7.4/hadoop-2.7.4.tar.gz
tar xzf hadoop-2.7.4.tar.gz

rm -rf hadoop
ln -s hadoop-2.7.4 hadoop

rm -rf $HOME/apps/hadoop-2.7.4.tar.gz

HADOOP_HOME=$HOME/apps/hadoop
echo "export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar" >> ~/.bash_profile
echo "export HADOOP_HOME=$HOME/apps/hadoop" >> ~/.bash_profile
echo "export HADOOP_INSTALL=$HADOOP_HOME" >> ~/.bash_profile
echo "export HADOOP_MAPRED_HOME=$HADOOP_HOME" >> ~/.bash_profile
echo "export HADOOP_COMMON_HOME=$HADOOP_HOME" >> ~/.bash_profile
echo "export HADOOP_HDFS_HOME=$HADOOP_HOME" >> ~/.bash_profile
echo "export HADOOP_YARN_HOME=$HADOOP_HOME" >> ~/.bash_profile
echo "export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native" >> ~/.bash_profile
echo "export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin" >> ~/.bash_profile
echo "export JAVA_LIBRARY_PATH=$HADOOP_HOME/lib/native:$JAVA_LIBRARY_PATH" >> ~/.bash_profile
