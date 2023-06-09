# To build the frontend, backoffice, and api as images sequentially (starting at the root folder for the application):


## INSTALLING PROJECT TO MACHINE
git clone 


## STARTING AT ROOT FOLDER:
cd api
sudo podman build \
    -t easyrentdigital/product-alpha-alternate/api:0.1.0 \
    .

cd ../frontend
sudo podman build \
    -t easyrentdigital/product-alpha-alternate/frontend:0.1.0 \
    .

cd ../backoffice
sudo podman build \
    -t easyrentdigital/product-alpha-alternate/backoffice:0.1.0 \
    .



sudo podman push easyrentdigital/product-alpha-alternate/api:0.1.0

sudo podman push easyrentdigital/product-alpha-alternate/frontend:0.1.0

sudo podman push easyrentdigital/product-alpha-alternate/backoffice:0.1.0

podman run -p 3000:4000 -d api-service
podman run -p 3001:80 -d frontend-service
podman run -p 3002:80 -d backoffice-service



## FROM EACH SERVICE'S FOLDER:


#       sudo podman push easyrentdigital/product-alpha-alternate:0.1.0
#       sudo podman push easyrentdigital/product-alpha-alternate:0.1.0
#       sudo podman push easyrentdigital/product-alpha-alternate:0.1.0




# To run the stack: docker stack deploy -c docker-compose.yml mystack
