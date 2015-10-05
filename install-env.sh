#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 mysql-client

git clone https://github.com/evercoolarshad/ITMO544_Environment_Setup.git

mv ./itmo-544-444-fall2015/images /var/www/html/images
mv ./itmo-544-444-fall2015/index.html /var/www/html
mv ./itmo-544-444-fall2015/*.php /var/www/html
echo "hello" > /temp/hello.txt


