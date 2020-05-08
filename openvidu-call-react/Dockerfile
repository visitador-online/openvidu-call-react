# => Build container
FROM node:10-alpine as builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

# => Run container
FROM nginx:1.17.9-alpine

# Nginx config
RUN rm -rf /etc/nginx/conf.d
COPY nginx /etc/nginx

# Static build
COPY --from=builder /app/build /usr/share/nginx/html/

EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
