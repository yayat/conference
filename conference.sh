#!/bin/bash
wget http://ubuntu.bigbluebutton.org/bigbluebutton.asc -O- | sudo apt-key add -
echo "Download repo ==> Done"

echo "deb http://ubuntu.bigbluebutton.org/lucid_dev_08/ bigbluebutton-lucid main" | sudo tee /etc/apt/sources.list.d/bigbluebutton.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ lucid multiverse" | sudo tee -a /etc/apt/sources.list
echo "Insert Repo ===> Done"

sudo apt-get update
echo "Update ===> Done"

sudo apt-get dist-upgrade
echo "Upgrade ===> Done"

sudo apt-get install zlib1g-dev libssl-dev libreadline5-dev libyaml-dev build-essential  bison checkinstall libffi5 gcc checkinstall libreadline5 libyaml-0-2
echo "Install Lib ===> Done"

./install-ruby.sh
echo "Install Ruby ===> Done"

sudo apt-get install bigbluebutton
sudo apt-get install bbb-demo
echo "inatall bigblubutton ===> Done"

sudo bbb-conf --clean
sudo bbb-conf --check


echo "bigblubutton is ready to use"
