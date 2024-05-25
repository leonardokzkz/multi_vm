#!/bin/bash
sudo apt-get update
sudo apt-get install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
echo "CREATE DATABASE IF NOT EXISTS myapp;" | sudo mysql
echo "SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'leonardo');" | sudo mysql | grep -q 1 || echo "CREATE USER 'leonardo'@'%' IDENTIFIED BY 'admin@123';" | sudo mysql
echo "GRANT ALL PRIVILEGES ON myapp.* TO 'leonardo'@'%';" | sudo mysql
echo "USE myapp; CREATE TABLE IF NOT EXISTS MyGuests (id INT AUTO_INCREMENT PRIMARY KEY, firstname VARCHAR(30), lastname VARCHAR(30));" | sudo mysql
