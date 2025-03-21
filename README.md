# AWS-DevOps-Web-Server-Setup

This repository contains Terraform scripts and a shell script (`setup_webserver.sh`) for automating the setup of a web server on an Ubuntu EC2 instance. The scripts automate the creation of EC2 instances, load balancing, and web server setup using Apache (or NGINX if preferred). A simple "Hello World" web page is created, and necessary firewall settings for HTTP/HTTPS traffic are configured.

## Task Overview

1. **AWS Setup and EC2 Instance Management:**

   - Use Terraform (`main.tf`) to create EC2 instances automatically.
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

5. **Load Balancing (Terraform `alb.tf`):**

   - The `alb.tf` Terraform script automates the setup of an Application Load Balancer (ALB).
   - The ALB distributes incoming traffic across multiple EC2 instances for high availability.
   - Security groups and listener rules are configured to handle HTTP/HTTPS traffic.

6. **Automation Script:**

   - The `setup_webserver.sh` script automates the installation of the web server, creation of the HTML page, and configuration of firewall rules.
   - Ensure this script can be run on a fresh EC2 instance to set up the web server automatically.

## Prerequisites

- AWS Account with access to EC2 services.
- Terraform installed locally.
- SSH key pair configured for secure connection to the instances.
- Basic knowledge of Terraform, SSH, EC2, and shell scripting.

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/AWS-DevOps-Web-Server-Setup.git
   cd AWS-DevOps-Web-Server-Setup
   ```

2. **Initialize and apply Terraform configuration:**

   ```bash
   terraform init
   terraform apply -auto-approve
   ```

3. **SSH into Ubuntu EC2 instance:**

   ```bash
   ssh -i path-to-key.pem ubuntu@your-ec2-public-ip
   ```

4. **Run the setup script:**

   ```bash
   chmod +x setup_webserver.sh
   ./setup_webserver.sh
   ```

5. **Verify Web Server Access:**

   ```bash
   curl http://web-server-ec2-public-ip
   ```

6. **Verify Load Balancer Access:**

   ```bash
   curl http://your-load-balancer-dns-name
   
