#!/bin/bash

set -x

 

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1 

 

echo ""

echo "........................................"

echo "Installation of application"

echo "........................................"

echo "Today's date: `date`"

echo "........................................"

echo ""

sudo pip install awscli

sudo apt-get install -y unzip

sudo apt update

sudo apt dist-upgrade

sudo apt autoremove

sudo apt update

sudo apt-get install openjdk-8-jdk openjdk-8-doc

java -version

sudo apt install wget software-properties-common

sudo wget -qO - https://api.bintray.com/orgs/jfrog/keys/gpg/public.key | sudo apt-key add - 

sudo add-apt-repository "deb [arch=amd64] https://jfrog.bintray.com/artifactory-debs $(lsb_release -cs) main"

sudo apt update

sudo apt install jfrog-artifactory-oss

sudo systemctl stop artifactory.service

sudo systemctl start artifactory.service

sudo systemctl enable artifactory.service

sudo systemctl status artifactory.service

echo ""

echo "........................................"

echo "Installation of application"

echo "........................................"

echo "Today's date: `date`"

echo "........................................"

echo ""