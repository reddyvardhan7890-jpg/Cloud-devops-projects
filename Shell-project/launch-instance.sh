#!/bin/bash


echo "installing nginx"

sudo yum install nginx -y

echo "Installing unzip"

sudo yum install unzip -y

echo "installing s-nail"

sudo yum install -y s-nail

echo "installing package "

sudo yum install at -y 


sudo systemctl enable atd

sudo systemctl start atd

sudo systemctl enable nginx

sudo systemctl start nginx

echo "server ready successfully"
