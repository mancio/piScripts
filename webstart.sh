#!/bin/sh

echo "Stop apache2 if running"
sudo systemctl stop apache2
sleep 2s
echo "Start pagekite to connect pi to public url"
sudo systemctl restart pagekite
sleep 2s
echo "Run docker web server on port 80"
docker run --platform=linux/arm/v7 -dp 80:80 mancioman2/simplepage:latest
sleep 2s