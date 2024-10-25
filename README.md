# AWS-DevOps-web-server
# Web Server Setup Script

This repository contains a shell script (`setup_webserver.sh`) for automating the setup of an Apache web server on an Ubuntu EC2 instance.

## Usage

1. SSH into your Ubuntu EC2 instance.
2. Download or copy the `setup_webserver.sh` script to your instance.
3. Make the script executable: `chmod +x setup_webserver.sh`.
4. Run the script: `./setup_webserver.sh`.
5. Once completed, your web server will be up and running. Visit the public IP of your EC2 instance to view the "Hello World" page.

## Script Explanation

- The script updates the package list, installs Apache, and creates a simple HTML page.
- Apache is configured to start on boot and traffic is allowed through the firewall (if UFW is used).

## Public IP

The public IP of the EC2 instance running the web server is: `your-ec2-public-ip`.
