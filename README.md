# AWS-DevOps-Web-Server-Setup

This repository contains a shell script (`setup_webserver.sh`) for automating the setup of a web server on an Ubuntu EC2 instance. The script installs and configures Apache (or NGINX if preferred), creates a simple "Hello World" web page, and configures necessary firewall settings for HTTP/HTTPS traffic.

## Task Overview

1. **AWS Setup and EC2 Instance Management:**
   - Create two `t2.micro` EC2 instances using different operating systems (Amazon Linux and Ubuntu).
   - Familiarize yourself with EC2 instance management (start, stop, restart, terminate).
   - Set up SSH key pairs to securely connect to both instances.

2. **Cross-Instance Connectivity:**
   - Ensure SSH and ICMP (ping) traffic is allowed between both EC2 instances.
   - Verify connectivity by pinging and SSH'ing between instances.

3. **Web Server Installation:**
   - Install Apache (or NGINX) on one EC2 instance.
   - Create a simple HTML page displaying "Hello World" and OS version information.
   - Configure the security group to allow HTTP/HTTPS traffic for public access to the page.

4. **Cross-Instance Web Access Verification:**
   - From the non-web server instance, use `curl` or `wget` to access the hosted "Hello World" page on the web server instance.

5. **Automation Script:**
   - The `setup_webserver.sh` script automates the installation of the web server, creation of the HTML page, and configuration of firewall rules.
   - Ensure this script can be run on a fresh EC2 instance to set up the web server automatically.

## Prerequisites

- AWS Account with access to EC2 services.
- SSH key pair configured for secure connection to the instances.
- Basic knowledge of SSH, EC2, and shell scripting.

## Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/AWS-DevOps-Web-Server-Setup.git
   cd AWS-DevOps-Web-Server-Setup

2. **SSH into Ubuntu ec2 instance:**
   ```bash
   ssh -i path-to-key.pem ubuntu@your-ec2-public-ip

3. **Setup Sript:**
   ```bash
   chmod +x setup_webserver.sh
   ./setup_webserver.sh
4. **Verify Web Server Access:**
   ```bash
   curl http://web-server-ec2-public-ip
