#!/usr/bin/env bash
echo "Installing Nginx & Unicorn"
apt-get install -y nginx >/dev/null 2>&1
rm -f                            /etc/nginx/sites-enabled/default
cp /vagrant/provision/nginx.conf /etc/nginx/sites-enabled/vagrant
cp /vagrant/provision/unicorn.sh /etc/init.d/unicorn
service nginx start
service unicorn start
echo "Nginx & Unicorn installed"
