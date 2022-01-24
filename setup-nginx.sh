#!/bin/sh

# Install nginx
apt-get -y update
apt -y install nginx

# Remove the default page
#rm /var/www/html/index.nginx-debian.html

# Create the default page for the region
wget https://raw.githubusercontent.com/rambo2/Test-Funcs/master/index.$1.html -O /var/www/html/index.html