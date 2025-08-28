#!/bin/bash

set -e

echo "Downloading and extracting WordPress..."

cd /tmp
curl -O https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
sudo rm -rf /var/www/html/*
sudo mv wordpress/* /var/www/html/

echo "Setting permissions..."
sudo chown -R www-data:www-data /var/www/html
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo find /var/www/html -type f -exec chmod 644 {} \;

echo "Creating WordPress config file..."
cd /var/www/html
cp wp-config-sample.php wp-config.php

echo "WordPress deployed to /var/www/html"
