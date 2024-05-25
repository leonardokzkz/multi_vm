#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

sudo apt-get install -y php-fpm php-mysql
sudo systemctl restart php7.2-fpm