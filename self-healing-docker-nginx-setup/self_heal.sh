#!/bin/bash
# Check if NGINX is running
if ! pgrep nginx > /dev/null
then
    echo "NGINX not running! Starting..."
    service nginx start
fi
