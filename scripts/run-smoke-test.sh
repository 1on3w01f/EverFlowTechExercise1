#!/bin/bash
# Script to run smoke tests for the ASP.NET Core application

echo "Starting smoke tests..."

# Check if the application is responding on the root endpoint
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080/)

if [ "$response" -ne 200 ]; then
  echo "Smoke test failed. Application is not responding with a 200 status code."
  exit 1
fi

echo "Smoke test passed."

