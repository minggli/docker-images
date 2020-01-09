#!/bin/bash

echo ". ~/aws-mfa-script-master/alias.sh" >> ~/.bashrc

pip install -U pip
pip install awscli
# add Session Manager pluggin for Ubuntu
cd ~
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
sudo dpkg -i session-manager-plugin.deb

