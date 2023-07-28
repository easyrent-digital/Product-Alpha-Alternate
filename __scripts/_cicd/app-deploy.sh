#!/usr/bin/env bash
cd /opt
sudo git clone https://github.com/easyrent-digital/$CODE_REPO_NAME.git

sudo chown -R $USER:$USER /opt/$CODE_REPO_NAME
sudo chmod -R +x /opt/$CODE_REPO_NAME/__scripts

sudo ln -s /opt/$CODE_REPO_NAME/__scripts/_cicd/app-deploy.sh /usr/local/bin/app-deploy

if [ "$1" == "all" ]; then
  echo "Deploying all application services..."
  echo "--- Deploying API service..."
  /bin/bash /opt/$CODE_REPO_NAME/__scripts/bc-deploy-api.sh
  echo "--- Deploying backend service..."
  /bin/bash /opt/$CODE_REPO_NAME/__scripts/bc-deploy-backend.sh
  echo "--- Deploying frontend service..."
  /bin/bash /opt/$CODE_REPO_NAME/__scripts/bc-deploy-frontend.sh
elif [ "$1" == "api" ]; then
  echo "Deploying API service only..."
  /bin/bash /opt/$CODE_REPO_NAME/__scripts/bc-deploy-api.sh
elif [ "$1" == "backend" ]; then
  echo "Deploying backend service only..."
  /bin/bash /opt/$CODE_REPO_NAME/__scripts/bc-deploy-backend.sh
elif [ "$1" == "frontend" ]; then
  echo "Deploying frontend service only..."
  /bin/bash /opt/$CODE_REPO_NAME/__scripts/bc-deploy-frontend.sh
else
  echo "Please provide an input: app-deploy all|api|backend|frontend"
fi
