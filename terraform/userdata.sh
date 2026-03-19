#!/bin/bash
set -e

# Log all output
exec > /var/log/userdata.log 2>&1

echo "=== Installing Docker ==="
yum update -y
yum install -y docker git
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

echo "=== Installing Docker Compose ==="
COMPOSE_VERSION="v2.24.0"
curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "=== Cloning Repository ==="
cd /home/ec2-user
git clone ${REPO_URL} app
cd app

echo "=== Starting Application ==="
docker-compose up -d --build

echo "=== Deployment Complete ==="
echo "App is running at http://$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4):8000"
