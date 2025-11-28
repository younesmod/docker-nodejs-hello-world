![Docker Image](https://img.shields.io/badge/GHCR-Node-blue?logo=docker)
[![Build and Push Docker Images](https://github.com/younesmod/docker-nodejs-hello-world/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/younesmod/docker-nodejs-hello-world/actions/workflows/docker-publish.yml)
[![Scan Docker Image](https://github.com/younesmod/docker-nodejs-hello-world/actions/workflows/scan.yml/badge.svg)](https://github.com/younesmod/docker-nodejs-hello-world/actions/workflows/scan.yml)
# 🐳 Dockerized To-Do API / Hello World App

A simple Express app that demonstrates how to containerize an application using Docker.

## 🚀 Features
- Simple REST API (`GET` and `POST`)
- Uses dependencies from `package.json`
- Dockerized for easy deployment

## 🧰 Tech Stack
- Node.js + Express
- Docker

## 🧩 Setup

```bash
# Clone repo
git clone https://github.com/younesmod/docker-nodejs-hello-world.git
cd docker-nodejs-hello-world

# Build Docker image
docker build -t docker-nodejs-hello-world .

# Run container
docker run -p 3000:3000 docker-nodejs-hello-world
```
## 🧪 Example API Calls
```bash
curl http://localhost:3000/

curl -X POST -H "Content-Type: application/json" \
     -d '{"task": "Learn Docker"}' http://localhost:3000/todos

curl http://localhost:3000/todos
```