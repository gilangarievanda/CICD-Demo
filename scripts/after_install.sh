#!/bin/bash
set -e

echo "=== AfterInstall ==="

cd /opt/cicd-demo

# Install pm2 globally if not present
if ! command -v pm2 &> /dev/null; then
  npm install -g pm2
fi

# Install dependencies
npm ci --only=production

# Set ownership
chown -R ec2-user:ec2-user /opt/cicd-demo

echo "AfterInstall completed"
