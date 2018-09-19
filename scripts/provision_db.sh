#!/usr/bin/env bash

# check if mysql is installed
# install mysql if not installed
which mysql-server || {

echo "No, mysql is not installed. Installing MySQL ...."

# Installing MySQL

# Download the MySQL community Yum Repository which provides packages for MySQL
wget https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm

# Install Repo
sudo yum install -y mysql80-community-release-el7-1.noarch.rpm

# Install MySQL
sudo yum install -y mysql-server

# Start MySQL server
sudo systemctl start mysqld

# Check MySQL server status
sudo systemctl status mysqld

}
