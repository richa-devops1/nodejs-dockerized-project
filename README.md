# Node.js CI/CD Pipeline with Jenkins & Docker

This project demonstrates a complete DevOps pipeline:

**GitHub → Jenkins → Docker → Docker Hub**

---

## Project Overview

This project automates:
- Build of Node.js application
- Docker image creation
- Push to Docker Hub

---

## Tech Stack

- Node.js
- Jenkins (CI/CD)
- Docker
- Docker Hub
- Git & GitHub

---

## Project Structure
. ├── app.js ├── package.json ├── Dockerfile ├── Jenkinsfile └── README.md

---

## Setup Instructions

### Clone Repository

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo

## Install Dependencies
npm install

## Run Application
node app.js

## App will run on:
http://localhost:3000

### Docker Setup

## BUild Docker Image
docker build -t yourusername/my-node-app .

## Run Container
docker run -d -p 3000:3000 yourusername/my-node-app


### Docker Hub

##Login
Docker Login

## Push Image
docker push yourusername/my-node-app

## Jenkins Pipeline
  Pipeline stages:
- Install dependencies
- Build Docker image
- Login to Docker Hub
- Push image
- CI/CD Flow

Code Push → Jenkins Build → Docker Build → Docker Push

## Troubleshooting
## Issue: npm command not found
# Install Node.js in Jenkins server
# Configure PATH properly

## Issue: Docker permission denied
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins

## Issue: Docker push failed
Check Docker Hub credentials in Jenkins
Ensure correct image name (username/repo)

Author
Richa Sharma
Devops Engineer



~                                             
