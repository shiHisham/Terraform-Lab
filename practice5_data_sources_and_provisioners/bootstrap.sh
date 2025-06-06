#!/bin/bash
echo "Hello from the EC2 instance!"
echo "Running bootstrap script..."
sudo apt-get update
sudo apt-get install -y nginx
echo "Nginx installed successfully!" 