#!/bin/bash
if command -v yum >/dev/null 2>&1; then
    # Amazon Linux
    sudo yum update -y
    sudo yum install -y httpd
    echo "<html><body><h1>Hello World from Amazon Linux</h1></body></html>" | sudo tee /var/www/html/index.html
    sudo systemctl start httpd
    sudo systemctl enable httpd
elif command -v apt >/dev/null 2>&1; then
    # Ubuntu
    sudo apt update -y
    sudo apt install -y apache2
    echo "<html><body><h1>Hello World from Ubuntu</h1></body></html>" | sudo tee /var/www/html/index.html
    sudo systemctl start apache2
    sudo systemctl enable apache2
else
    echo "Unsupported OS. This script only supports Amazon Linux and Ubuntu."
fi