#/bin/bash

packages=(
    "nginx"
    "unzip"
    "s-nail"
    wget 
    curl
    at
)

for package in "${packages[@]}"
do
  sudo yum install -y $package
done

sudo yum install -y postfix
sudo systemctl enable postfix
sudo systemctl start postfix

sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable atd
sudo systemctl start atd