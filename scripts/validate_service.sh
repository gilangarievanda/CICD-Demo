#!/bin/bash
set -e

echo "=== ValidateService ==="

# Wait for app to start
sleep 5

# Health check
for i in {1..5}; do
  HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/health || echo "000")
  if [ "$HTTP_CODE" = "200" ]; then
    echo "Health check passed!"
    exit 0
  fi
  echo "Attempt $i: HTTP $HTTP_CODE - retrying in 3s..."
  sleep 3
done

echo "Health check failed after 5 attempts"
exit 1
