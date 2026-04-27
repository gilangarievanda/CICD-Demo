#!/bin/bash
set -e

echo "=== ApplicationStart ==="

cd /opt/cicd-demo

# Start app with pm2 as ec2-user
su - ec2-user -c "cd /opt/cicd-demo && NODE_ENV=development APP_VERSION=${DEPLOYMENT_ID:-dev} pm2 start server.js --name cicd-demo"

echo "ApplicationStart completed"
