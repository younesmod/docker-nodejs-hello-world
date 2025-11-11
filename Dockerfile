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

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]