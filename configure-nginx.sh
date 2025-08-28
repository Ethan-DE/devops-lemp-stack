#!/bin/bash

set -e

echo "Configuring NGINX to forward port 8080 to port 80..."

sudo tee /etc/nginx/sites-available/default > /dev/null <<EOF
server {
    listen 80;
    server_name _;

    location / {
        proxy_pass http://localhost:8080;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
    }
}
EOF

echo "Testing NGINX configuration..."
sudo nginx -t

echo "Reloading NGINX..."
sudo systemctl reload nginx

echo "NGINX configuration complete."
