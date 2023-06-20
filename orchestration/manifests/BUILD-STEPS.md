# FULL BUILD INSTRUCTIONS:

# - DO ONCE:
1. Decide on Ports for (api), (mobile), (frontend), (backend).
2. Create Mailjet account for free SMNP server.
- Obtain Username, Password, From Email, Admin Email.
- Add parameters above & token value for Expo_Access_Token to (api).
2. Create free reCAPTCHA Site Key from Google.
- Add parameters to (backend).
3. 

# - DO EACH TIME:


# - DO EACH MAJOR RELEASE:


# - DO 

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
