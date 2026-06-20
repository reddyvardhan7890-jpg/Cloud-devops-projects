#!bin/bash
echo "removing default website"

sudo rm -rf /var/www/html/*

echo "copy the html files"

sudo cp -r website/* /var/www/html/

echo "changing the ownership of the files"

sudo chmod -R 755 /var/www/html

sudo systemctl restart httpd

echo "deployed the website successfully"
