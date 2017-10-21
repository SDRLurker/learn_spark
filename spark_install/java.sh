cd /opt
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz"
tar xzf jdk-8u144-linux-x64.tar.gz

cd /opt/jdk1.8.0_144/
alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 2
alternatives --config java

alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_144/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_144/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_144/bin/jar
alternatives --set javac /opt/jdk1.8.0_144/bin/javac

rm -rf /opt/jdk-8u144-linux-x64.tar.gz

echo "export JAVA_HOME=/opt/jdk1.8.0_144" >> /etc/profile
echo "export JRE_HOME=/opt/jdk1.8.0_144/jre" >> /etc/profile
echo "export PATH=\$PATH:/opt/jdk1.8.0_144/bin:/opt/jdk1.8.0_144/jre/bin" >> /etc/profile
