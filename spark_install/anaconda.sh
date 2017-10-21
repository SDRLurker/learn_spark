mkdir -p /opt/python
cd /opt/python
rm -rf /opt/python/Anaconda3-5.0.0-Linux-x86_64.sh
wget https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
chmod +x /opt/python/Anaconda3-5.0.0-Linux-x86_64.sh
bash /opt/python/Anaconda3-5.0.0-Linux-x86_64.sh
echo "export PATH=/opt/anaconda/anaconda3/bin:$PATH" >> /etc/profile
