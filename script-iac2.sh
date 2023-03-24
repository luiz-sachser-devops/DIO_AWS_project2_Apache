#!/bin/bash

# Update server

echo 'Updating server...'

apt-get update
apt-get upgrade -y

# Install Apache2 and UNZIP
echo 'Installing Apache2 Server...'
apt-get install apache2 -y

echo 'Installing UNZIP'
apt-get install unzip -y

echo 'Working on a TEMP folder... '
cd /tmp

# Downloading Linux DIO Website
echo 'Downloading Linux-Site-DIO from Web'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Unzipping File
echo 'Unzipping files...'
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


