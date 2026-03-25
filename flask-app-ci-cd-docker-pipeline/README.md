# CI/CD Pipeline for Flask App with Docker

## Overview
This project demonstrates a **complete CI/CD pipeline** for a Flask web application using **Docker** and **GitHub Actions**.  
Every commit to the repository automatically builds the Docker image and pushes it to Docker Hub.

## Features
- Flask web application running locally and in Docker
- Docker image build and push automation
- GitHub Actions workflow for CI/CD
- Local and cloud-ready deployment

## Tools & Technologies
- Python 3.9 / Flask
- Docker
- GitHub Actions
- Docker Hub

## How to Run Locally
1. Clone the repository:
git clone https://github.com/YOUR_USERNAME/ci-cd-flask-docker-pipeline.git
cd ci-cd-flask-docker-pipeline
2. Install dependencies:
pip install -r requirements.txt
3. Run the Flask app:
python app.py
4. Open your browser and go to:
http://localhost:5000

Docker Usage:
1. Build Docker image:
docker build -t ci-cd-app .
2. Run container locally:
docker run -p 5000:5000 ci-cd-app
3. Access app at:
http://localhost:5000

CI/CD Workflow:
- Fully automated via GitHub Actions
- On every push to main branch:
1. Build Docker image
2. Push image to Docker Hub (YOUR_DOCKER_USERNAME/ci-cd-app:latest)
   
Deliverables:
- Flask app (app.py)
- Dockerfile
- GitHub Actions workflow (.github/workflows/docker-ci.yml)
- Docker Hub image: YOUR_DOCKER_USERNAME/ci-cd-app:latest

Screenshots for report (placeholders, not embedded):
- Flask app running locally
- Docker build success
- Flask app running inside Docker
- Docker Hub image pushed
- GitHub Actions workflow success
