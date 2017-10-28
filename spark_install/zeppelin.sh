#!/bin/bash
mkdir -p $HOME/apps
cd $HOME/apps
wget http://mirror.navercorp.com/apache/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-all.tgz
tar xzf zeppelin-0.7.3-bin-all.tgz

rm -rf zeppelin
ln -s zeppelin-0.7.3-bin-all zeppelin

# http://jinhokwon.tistory.com/231
ZEPPELIN_HOME=$HOME/apps/zeppelin
echo "export ZEPPELIN_HOME=$HOME/apps/zeppelin" >> ~/.bash_profile
echo "export PATH=${ZEPPELIN_HOME}/bin:\$PATH" >> ~/.bash_profile

cp -p $ZEPPELIN_HOME/conf/zeppelin-site.xml.template $ZEPPELIN_HOME/conf/zeppelin-site.xml
# https://stackoverflow.com/questions/32210529/zeppelin-change-port-already-in-use-by-spark-master
sed -i 's/8080/8050/g' $ZEPPELIN_HOME/conf/zeppelin-site.xml
