Self-Healing Infrastructure using Docker and NGINX

## Overview
This project demonstrates a **self-healing infrastructure system** using Docker, NGINX, and cron jobs.  
The system automatically detects service failure and restores it without manual intervention, ensuring high availability.

## Features
- Automated service monitoring
- Self-healing using Bash scripting
- Cron-based periodic health checks
- Containerized deployment with Docker
- Lightweight and production-inspired design

## Tools & Technologies
- Docker
- NGINX
- Bash Scripting
- Cron (Linux Scheduler)

## Project Structure

self-healing-infrastructure-docker-nginx/
├── Dockerfile
├── self_heal.sh
├── self_heal.cron
├── README.md
└── screenshots/


## How It Works
- NGINX runs inside a Docker container
- A cron job executes every minute
- A script checks if NGINX is running
- If the service is down, it is automatically restarted
- Logs are generated for monitoring recovery events

## How to Run

### Build Docker Image

docker build -t self-healing-nginx .
Run Container
docker run -d -p 8080:80 --name self-heal-app self-healing-nginx
Access Application

Open in browser:

http://localhost:8080
Self-Healing Test
Stop NGINX manually:
docker exec -it self-heal-app service nginx stop
Wait for 1 minute (cron execution)
Refresh browser → NGINX will be restored automatically
Check logs:
docker exec -it self-heal-app cat /var/log/self_heal.log
Screenshots

Execution proof is available in the screenshots/ folder:

Container running
NGINX initial state
Service stopped
Self-healing log output
NGINX restored automatically
Conclusion

This project implements a basic self-healing mechanism, a core concept in modern DevOps and cloud infrastructure.
It demonstrates how automation can reduce downtime and improve system reliability.
