# DevOps: Automated LEMP Stack Deployment with WordPress

This project automates the deployment of a secure LEMP stack (Linux, NGINX, MySQL, PHP) and WordPress on an Ubuntu server. It includes Bash scripts to install, configure, and secure the stack, designed for production environments and DevOps workflows.

## What's Included

- Full LEMP stack installation (NGINX, MySQL, PHP)
- Secure server user creation (`jelastictest`)
- NGINX config rewrite for port 8080
- WordPress auto-deployment via GitHub
- Basic iptables firewall with port redirection and isolation
- Clean Bash scripting with inline validation
- Ready to integrate with DNS and SSL later (Let's Encrypt ready)

## Tech Stack

- Ubuntu 20.04+ / Debian-based server
- Bash scripting
- NGINX
- MySQL (not MariaDB)
- PHP 7.4+
- iptables + ipset (firewall rules)

## How to Use

```bash
git clone https://github.com/Ethan-DE/devops-lemp-stack.git
cd devops-lemp-stack
chmod +x *.sh
sudo ./setup-lemp.sh
sudo ./configure-nginx.sh
sudo ./deploy-wordpress.sh
sudo ./firewall.sh

---

## Notes

Ensure you have root or sudo access before running.

### Status

Tested on fresh Ubuntu 22.04 VPS (VDS) with static IPv4.  
Scripts structured to survive restarts and reruns.

---

## Notes

Ensure you have root or sudo access before running.

### Status

Tested on fresh Ubuntu 22.04 VPS (VDS) with static IPv4.  
Scripts are structured to survive restarts and reruns.

---

## Author

**Ethan E**  
Email: eradirideitie@gmail.com  
Open to relocation and remote DevOps roles
