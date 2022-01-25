#!/bin/sh

# Install nginx
#sudo apt-get -y update
#sudo apt -y install nginx
apt-get update -y
apt-get install -y nginx

# Remove the default page
rm /var/www/html/index.nginx-debian.html

# Create the default page for the region
wget https://raw.githubusercontent.com/rambo2/Test-Funcs/master/index.$1.html -O /var/www/html/index.html
