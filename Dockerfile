# Use the official Node.js image as the base image
FROM node:20-alpine

# maintainer labels
LABEL maintainer="Younes Modaresian <modaresian.younes@gmail.com> (https://github.com/younesmod)" \ 
    org.opencontainers.image.authors="Younes Modaresian <modaresian.younes@gmail.com>" \
    org.opencontainers.image.url="https://github.com/younesmod/dockerized-static-website/pkgs/container/dockerized-static-website" \
    org.opencontainers.image.source="https://github.com/younesmod/dockerized-static-website" \
    org.opencontainers.image.title="dockerized-static-website" \ 
    org.opencontainers.image.description="A simple nginx-based/dockerized project" \ 
    org.opencontainers.image.vendor="Younes Modaresian"
#\ org.opencontainers.image.licenses="MIT"

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]