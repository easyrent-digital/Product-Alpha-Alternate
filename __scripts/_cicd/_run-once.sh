#!/usr/bin/env bash

# Note: This script only lives in Git for reference.
#       The commands must be run manually in your prefered Builder machine / CI machine.

#       REQUIREMENTS FOR TESTED LINUX BUILDER ENVIRONMENT:
#       Tested on a Linux environment with the following:
#       * OS:
#           - ...?
#       * Directories:
#           - /opt  used as base folder for app import.
#       * Tools:
#           - git 
#               - installed & authenticated
#               - version:
#           - docker 
#               - installed
#               - DockerHub path defined and authenticated
#               - version:
#       * Services:
#           - MongoDB 
#               - installed and deployed.
#               - version:

# Set Global Variables (Linux):
export GIT_ACCOUNT_PATH="https://github.com/easyrent-digital"
export CODE_REPO_NAME="Product-Alpha-Alternate"
export IMAGE_REPO_PATH=""
export APP_NAME="easyrent"

# Update bash profile to preserve global variables across sessions:
echo "export GIT_ACCOUNT_PATH=$GIT_ACCOUNT_PATH" >> ~/bash_profile.sh
echo "export CODE_REPO_NAME=$CODE_REPO_NAME" >> ~/bash_profile.sh
echo "export IMAGE_REPO_PATH=$IMAGE_REPO_PATH" >> ~/bash_profile.sh
echo "export APP_NAME=$APP_NAME" >> ~/bash_profile.sh

# Install git and docker (if not already in system)
# Log in to Git and DockerHub if you haven't already.

# Add application repository:
cd /opt
sudo git clone $GIT_ACCOUNT_PATH/$CODE_REPO_NAME.git

sudo chown -R $USER:$USER /opt/$CODE_REPO_NAME
sudo chmod -R +x /opt/$CODE_REPO_NAME/__scripts
sudo chmod -R +x /opt/$CODE_REPO_NAME/orchestration

sudo ln -s /opt/$CODE_REPO_NAME/__scripts/_cicd/app-build.sh /usr/local/bin/app-build
sudo ln -s /opt/$CODE_REPO_NAME/__scripts/_cicd/app-deploy.sh /usr/local/bin/app-deploy

sudo cp /opt/$CODE_REPO_NAME/__services/$APP_NAME.service /etc/systemd/system
sudo systemctl enable $APP_NAME.service
