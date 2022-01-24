#!/bin/sh

# Install nginx
sudo apt-get -y update
sudo apt -y install nginx

# Remove the default page
sudo rm /var/www/html/index.nginx-debian.html

# Create the default page for the region
sudo wget https://raw.githubusercontent.com/rambo2/Test-Funcs/master/index.$1.html -O /var/www/html/index.html
