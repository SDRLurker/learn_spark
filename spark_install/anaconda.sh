#!/bin/bash
mkdir -p $HOME/download/anaconda
cd $HOME/download/anaconda
rm -rf $HOME/download/anaconda/Anaconda3-5.0.0-Linux-x86_64.sh
wget https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
chmod +x $HOME/download/anaconda/Anaconda3-5.0.0-Linux-x86_64.sh
bash $HOME/download/anaconda/Anaconda3-5.0.0-Linux-x86_64.sh
echo "export PATH=$HOME/anaconda3/bin:$PATH" >> ~/.bash_profile
