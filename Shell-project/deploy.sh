#!bin/bash

echo "removing default website"

sudo rm -rf /usr/share/nginx/html/*

echo "copy the html files"

sudo cp -r website/* /usr/share/nginx/html/

echo "changing the ownership of the files"

sudo chmod -R 755 /usr/share/nginx/html

sudo systemctl restart nginx

echo "deployed the website successfully"

