mkdir ~/Download
cd ~/Download
wget http://mirror.navercorp.com/apache/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-all.tgz
mkdir /opt/zeppelin
tar xvfz zeppelin-0.7.3-bin-all.tgz -C /opt/zeppelin
rm -rf ~/Download/zeppelin-0.7.3-bin-all.tgz

# http://jinhokwon.tistory.com/231
echo "export ZEPPELIN_HOME=/opt/zeppelin/zeppelin-0.7.3-bin-all" >> /etc/profile
echo "export PATH=\$ZEPPELIN_HOME/bin:\$PATH" >> /etc/profile

ZEPPELIN_HOME=/opt/zeppelin/zeppelin-0.7.3-bin-all
cp -p $ZEPPELIN_HOME/conf/zeppelin-site.xml.template $ZEPPELIN_HOME/conf/zeppelin-site.xml
# https://stackoverflow.com/questions/32210529/zeppelin-change-port-already-in-use-by-spark-master
sed -i 's/8080/8050/g' $ZEPPELIN_HOME/conf/zeppelin-site.xml
