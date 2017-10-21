mkdir ~/Download
cd ~/Download
wget http://mirror.navercorp.com/apache/hadoop/common/hadoop-2.7.4/hadoop-2.7.4.tar.gz
mkdir /opt/hadoop
tar xvfz hadoop-2.7.4.tar.gz -C /opt/hadoop
rm -rf ~/Download/hadoop-2.7.4.tar.gz
echo "export HADOOP_HOME=/opt/hadoop/hadoop-2.7.4" >> /etc/profile
echo "export PATH=\$HADOOP_HOME/bin:\$PATH" >> /etc/profile
