#!/bin/bash

echo "=== ApplicationStop ==="

# Stop app gracefully
su - ec2-user -c "pm2 stop cicd-demo 2>/dev/null || true"
su - ec2-user -c "pm2 delete cicd-demo 2>/dev/null || true"

echo "ApplicationStop completed"
