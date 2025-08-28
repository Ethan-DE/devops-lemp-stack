#!/bin/bash

set -e

echo "Running full DevOps LEMP stack deployment..."

# Run LEMP setup
bash setup-lemp.sh

# Optional: Run WordPress setup if script added later
# bash setup-wordpress.sh

# Apply firewall rules
bash setup-firewall.sh

echo "All setup scripts executed successfully."
