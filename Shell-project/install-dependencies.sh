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

echo "Enabling services..."
sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable atd
sudo systemctl start atd

sudo yum install fcgiwrap -y

sudo systemctl enable fcgiwrap
sudo systemctl start fcgiwrap

echo "Setup completed successfully"