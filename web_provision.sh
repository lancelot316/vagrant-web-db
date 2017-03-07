#!/usr/bin/env bash

echo "Installing nginx and setting up"
apt-get update
apt-get install -y nginx
rm -rf /var/www
ln -fs /vagrant /var/www
