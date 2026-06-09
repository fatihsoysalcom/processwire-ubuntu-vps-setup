#!/bin/bash

# This script demonstrates the initial setup steps for ProcessWire on an Ubuntu VPS.
# It covers updating the system, installing Apache, PHP, and MySQL.
# Note: This is a simplified example and does not include ProcessWire installation itself,
# nor database creation or user configuration. It focuses on the server environment setup.

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Updating package list..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Installing Apache web server..."
sudo apt install apache2 -y

# Verify Apache status
echo "Checking Apache status..."
sudo systemctl status apache2

echo "Installing PHP and common modules..."
sudo apt install php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y

echo "Installing MySQL server..."
sudo apt install mysql-server -y

# Verify MySQL status
echo "Checking MySQL status..."
sudo systemctl status mysql

echo "\nServer environment setup for ProcessWire is complete.\n"
echo "Next steps would involve downloading ProcessWire, configuring Apache virtual hosts, and setting up your MySQL database."
