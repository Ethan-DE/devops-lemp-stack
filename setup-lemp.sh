setup-lemp.sh
#!/bin/bash

set -e

echo "Updating package lists..."
sudo apt update

echo "Installing NGINX, MySQL, PHP, and required extensions..."
sudo apt install -y nginx mysql-server php-fpm php-mysql php-cli php-curl php-mbstring php-xml unzip curl

echo "Enabling services to start on boot..."
sudo systemctl enable nginx
sudo systemctl enable mysql
sudo systemctl enable php8.1-fpm

echo "Starting services..."
sudo systemctl start nginx
sudo systemctl start mysql
sudo systemctl start php8.1-fpm

echo "Securing MySQL installation..."
sudo mysql_secure_installation

echo "LEMP stack setup complete."
