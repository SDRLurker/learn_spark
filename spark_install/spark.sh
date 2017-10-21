mkdir ~/Download
cd ~/Download
wget https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz
mkdir /opt/spark
tar xvf spark-2.2.0-bin-hadoop2.7.tgz -C /opt/spark
rm -rf ~/Download/spark-2.2.0-bin-hadoop2.7.tgz
echo "export SPARK_HOME=/opt/spark/spark-2.2.0-bin-hadoop2.7" >> /etc/profile
echo "export PATH=\$SPARK_HOME/bin:\$PATH" >> /etc/profile
