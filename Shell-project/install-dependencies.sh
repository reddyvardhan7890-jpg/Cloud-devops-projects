#/bin/bash

packages=(
    "nginx"
    "unzip"
    "mailx"
    wget 
    curl
    at
)

for package in "${packages[@]}"
do
  sudo yum install -y $package
done

sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable atd
sudo systemctl start atd