TODAY=`date '+%y%m%d'`
cp -p /etc/hosts /etc/hosts.$TODAY
echo "10.34.10.201 master" >> /etc/hosts
echo "10.34.19.172 slave01" >> /etc/hosts
echo "10.33.1.159 slave02" >> /etc/hosts
