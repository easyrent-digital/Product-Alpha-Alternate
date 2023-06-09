# Frontend
# Stage 1: Build
FROM node:16 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
RUN npm run build

# Stage 2: Serve
# Note: /app/build created from 'npm run build'
FROM nginx:1.19
COPY --from=build-stage /app/build /usr/share/nginx/html
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
