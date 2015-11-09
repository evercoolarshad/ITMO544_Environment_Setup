#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl 

git clone https://github.com/evercoolarshad/ITMO544_Application_Setup.git
mv ./ITMO544_Application_Setup/images /var/www/html/images
mv ./ITMO544_Application_Setup/index.html /var/www/html
mv ./ITMO544_Application_Setup/*.php /var/www/html

sudo curl -sS https://getcomposer.org/installer | php

sudo php composer.phar require aws/aws-sdk-php

sudo mv vendor /var/www/html

sudo php /var/www/html/setup.php

chmod 600 /var/www/html/setup.php 

sudo service apache2 restart

echo "hello" > /temp/hello.txt
