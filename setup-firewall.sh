#!/bin/bash

set -e

echo "Flushing existing iptables rules..."
sudo iptables -F

echo "Allowing loopback traffic..."
sudo iptables -A INPUT -i lo -j ACCEPT

echo "Allowing established connections..."
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

echo "Allowing SSH..."
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

echo "Redirecting port 80 to 8080..."
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

echo "Dropping all other incoming traffic..."
sudo iptables -A INPUT -j DROP

echo "Saving iptables rules..."
sudo apt install -y iptables-persistent
sudo netfilter-persistent save

echo "Firewall rules applied and saved."
