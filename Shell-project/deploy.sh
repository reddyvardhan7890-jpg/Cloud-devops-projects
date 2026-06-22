#!/bin/bash
set -e

echo "Removing old website..."
sudo rm -rf /usr/share/nginx/html/*

echo "Copying website files..."
sudo cp -r website/* /usr/share/nginx/html/

echo "Copying shell scripts..."
sudo mkdir -p /usr/lib/cgi-bin
sudo cp *.sh /usr/lib/cgi-bin/

echo "Setting execute permissions..."
sudo chmod +x /usr/lib/cgi-bin/*.sh

echo "Restarting nginx..."
sudo systemctl restart nginx

echo "Deployment successful"