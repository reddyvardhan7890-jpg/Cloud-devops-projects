#!/bin/bash

set -e

packages=(
    nginx
    unzip
    wget
    curl
    at
    msmtp
)

echo "Installing packages..."
sudo yum install -y "${packages[@]}"

echo "Installing fcgiwrap..."
sudo yum install -y fcgiwrap

echo "Enabling services..."
sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable atd
sudo systemctl start atd

sudo systemctl enable fcgiwrap
sudo systemctl start fcgiwrap

# Allow nginx user to run at jobs properly
sudo usermod -s /bin/bash nginx

echo "Setup completed successfully"