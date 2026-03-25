# Base image
FROM ubuntu:20.04

# Install NGINX and bash utilities
RUN apt-get update && apt-get install -y nginx curl cron

# Copy self-healing script
COPY self_heal.sh /usr/local/bin/self_heal.sh
RUN chmod +x /usr/local/bin/self_heal.sh

# Copy cron job
COPY self_heal.cron /etc/cron.d/self_heal
RUN chmod 0644 /etc/cron.d/self_heal
RUN crontab /etc/cron.d/self_heal

# Expose NGINX port
EXPOSE 80

# Start cron and NGINX
CMD cron && nginx -g 'daemon off;'