#!/bin/bash
set -e

#echo "----- Installing MongoDB! -----"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" >  /etc/apt/sources.list.d/mongodb-org-3.2.list
apt update
apt install -y mongodb-org

#echo "----- Starting MongoDB! ------"
#sudo systemctl start mongod
sudo systemctl enable mongod
#sudo systemctl status mongod
