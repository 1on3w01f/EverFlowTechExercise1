#!/bin/bash
# Script to run performance tests for the ASP.NET Core application

echo "Starting performance tests..."

# Run a simple performance test with ApacheBench
ab -n 1000 -c 10 http://localhost:8080/

if [ $? -ne 0 ]; then
  echo "Performance tests failed. Please review the test results."
  exit 1
fi

echo "Performance tests passed."

