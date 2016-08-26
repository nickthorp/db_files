#!/bin/bash
PASSWORD=$1
# Install mariadb
yum install mariadb
# Enable db to start at boot
systemctl enable mariadb
# Start db service
systemctl start mariadb

# Add firewall port
firewall-cmd --permanent --zone=public --add-port=3306/tcp
firewall-cmd --reload

# Initialize root user
mysqladmin --version
mysqladmin -u root password "$PASSWORD";

# Create HOARD db
mysqladmin -u root -p create HOARD

# Initialize tables
mysql -u root -p HOARD < _create_user.sql
mysql -u root -p HOARD < _create_tables.sql
