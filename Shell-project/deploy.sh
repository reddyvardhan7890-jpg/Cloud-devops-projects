#!bin/bash

echo "removing default website"

sudo rm-f /usr/share/niginx/html/*

echo "copy the html files"

sudo cp -r website/* /usr/share/niginx/html/

echo "changing the ownership of the files"

sudo chmod -R 755 /usr/share/niginx/html

sudo systemctl restart nginx

echo "deployed the website successfully"

