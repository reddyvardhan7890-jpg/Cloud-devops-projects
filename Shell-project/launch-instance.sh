#!/bin/bash

echo "updating server"

sudo yum update -y

echo "installing nginx"

sudo yum install nginx -y

echo "Installing unzip"

sudo yum install unzip -y

echo "installing mailx"

sudo yum install mailx -y

echo "installing package "

sudo yum install at -y 


start systemctl enable atd

sudo systemctl start atd

sudo systemctl enable nginx

sudo systemctl start nginx

echo "server ready successfully"
