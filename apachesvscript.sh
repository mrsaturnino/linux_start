#!/bin/bash

echo "apache webserver script provisioner"
echo "initializing..."
echo ""

echo "initializing the server update"
apt-get update
apt-get upgrade -y
echo "ubuntu server updated."

echo ""

echo "installing apache2 webserver"
apt-get install apache2
echo "apache2 successful installed."

echo "installing unzip"
apt-get install unzip
echo "unzip successfull installed."

echo "installing git"
apt-get install git
echo "git successfull installed."

echo "downloading site project data."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo ""
cd linux-site-dio-main

echo "copy all website data to apache server directory"
cp -R * /var/www/html/
