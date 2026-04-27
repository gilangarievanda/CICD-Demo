#!/bin/bash
set -e

echo "=== BeforeInstall ==="

# Stop existing app if running
if pm2 list 2>/dev/null | grep -q cicd-demo; then
  pm2 stop cicd-demo || true
  pm2 delete cicd-demo || true
fi

# Clean up old files
rm -rf /opt/cicd-demo/*

echo "BeforeInstall completed"
