#!/usr/bin/env bash

repoName="Product-Alpha-Alternate"
appName="EasyRent"
cd /opt
sudo git clone https://github.com/easyrent-digital/$repoName.git

sudo chown -R $USER:$USER /opt/$repoName
sudo chmod -R +x /opt/$repoName/__scripts

sudo ln -s /opt/$repoName/__scripts/_cicd/app-deploy.sh /usr/local/bin/app-deploy

if [ "$1" == "all" ]; then
  /bin/bash /opt/$repoName/__scripts/bc-deploy-api.sh
  /bin/bash /opt/$repoName/__scripts/bc-deploy-backoffice.sh
  /bin/bash /opt/$repoName/__scripts/bc-deploy-frontend.sh
elif [ "$1" == "api" ]; then
  /bin/bash /opt/$repoName/__scripts/bc-deploy-api.sh
elif [ "$1" == "backoffice" ]; then
  /bin/bash /opt/$repoName/__scripts/bc-deploy-backoffice.sh
elif [ "$1" == "frontend" ]; then
  /bin/bash /opt/$repoName/__scripts/bc-deploy-frontend.sh
else
  echo "Usage: bc-deploy all|api|backoffice|frontend"
fi
