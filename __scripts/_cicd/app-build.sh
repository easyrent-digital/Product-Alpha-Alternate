#!/usr/bin/env bash

services = ("api" "backoffice" "frontend")
if [ "$1" == "all" ]; then
  services = ("api" "backoffice" "frontend")
elif [ "$1" == "api" || "$1" == "backoffice" || "$1" == "frontend" ]; then
  services = "$1"
else
  services = ""
  echo "Input not valid. Try: app-build all|<service> where <service> can be: $services"
  exit 1
fi
echo "Building application service(s): $services..."
cd /opt/bookcars
git pull
chmod +x -R /opt/$CODE_REPO_NAME/__scripts
for serviceName in ${services[@]}:
do
  echo "--- Building $service service..."
  start_time=`date +%s`

  # Tag image with current git revision number
  buildName="$serviceName-service"
  gitRevision=$(git rev-parse --short HEAD)
  docker build -t $buildName:$gitRevision ../../$serviceName
  
  # Print build time elapsed
  finish_time=`date +%s`
  elapsed_time=$((finish_time  - start_time))
  ((sec=elapsed_time%60, elapsed_time/=60, min=elapsed_time%60, hrs=elapsed_time/60))
  timestamp=$(printf "api-service:$gitRevision built in %d minutes and %d seconds." $min $sec)
  echo $timestamp

  # Push to repo (if no repo added, default path is to DockerHub)
  echo "--- Pushing $service service to Docker..."
  docker push $IMAGE_REPO_PATH$buildName:$gitRevision
done
