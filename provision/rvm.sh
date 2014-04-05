#!/usr/bin/env bash
\curl -L https://get.rvm.io | bash -s stable --autolibs=packages
source /etc/profile.d/rvm.sh
rvm install 2.1.1
adduser vagrant rvm
echo "Installing rails gem"
gem install rails --version 4.0.4 --no-rdoc --no-ri
