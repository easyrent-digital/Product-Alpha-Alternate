#!/usr/bin/env bash

repoName="Product-Alpha-Alternate"
appName="easyrent"
cd /opt
sudo git clone https://github.com/easyrent-digital/$repoName.git

sudo chown -R $USER:$USER /opt/$repoName
sudo chmod -R +x /opt/$repoName/__scripts

sudo ln -s /opt/$repoName/__scripts/_cicd/app-deploy.sh /usr/local/bin/app-deploy

sudo cp /opt/$repoName/__services/$appName.service /etc/systemd/system
sudo systemctl enable $appName.service