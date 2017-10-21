mkdir ~/Download
cd ~/Download
wget http://www.scala-lang.org/files/archive/scala-2.12.3-1.tgz
mkdir /opt/scala
tar xvf scala-2.12.3-1.tgz -C /opt/scala
rm -rf ~/Download/scala-2.12.3-1.tgz
echo "export SCALA_HOME=/opt/scala/scala-2.12.3-1" >> /etc/profile
echo "export PATH=\$SCALA_HOME/bin:\$PATH" >> /etc/profile
