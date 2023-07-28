# API
FROM node:16
WORKDIR /app
COPY package*.json ./
# Use "npm ci" in prod. "npm i" can be used in dev and is faster.
RUN npm ci 
RUN sudo systemctl restart api
RUN sudo systemctl status api --no-pager
COPY . ./
EXPOSE 4000
CMD ["node", "server.js"]
