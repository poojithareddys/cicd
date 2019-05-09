#!/bin/bash
#provision.sh
ROLE=$ROLENAME.yml
 sudo apt-get update
 echo "apt-get update done."
 sudo apt-get install -y python-dev python-pip
 sudo pip install ansible
sudo apt-get install -y unzip
# sudo timedatectl set-timezone Europe/Istanbul
 #sudo localectl set-locale LANG=en_US.utf8
#sudo wget "https://s3.us-east-2.amazonaws.com/btelkpocvideo/BTELKPOC/javaplaybookn.yml"`
#https://s3.us-east-2.amazonaws.com/btelkpocvideo/ansible-test/data.zip
sudo wget "https://s3.us-east-2.amazonaws.com/btelkpocvideo/ansible-test/data.zip";sudo unzip data.zip
echo $ROLE
echo "Running build."
sudo ansible-playbook pro1/$ROLE
