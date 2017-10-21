mkdir ~/Download
cd ~/Download
wget http://apache.mirror.cdnetworks.com/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
mkdir /opt/maven
tar xvfz apache-maven-3.5.0-bin.tar.gz -C /opt/maven
rm -rf ~/Download/apache-maven-3.5.0-bin.tar.gz
echo "export M2_HOME=/opt/maven/apache-maven-3.5.0" >> /etc/profile
echo "export PATH=\$M2_HOME/bin:\$PATH" >> /etc/profile
