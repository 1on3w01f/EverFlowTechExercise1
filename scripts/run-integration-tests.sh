#!/bin/bash
# Script to run integration tests for the ASP.NET Core application

echo "Starting integration tests..."

# Run integration tests using dotnet test
dotnet test ./tests/IntegrationTests/IntegrationTests.csproj --logger:trx

if [ $? -ne 0 ]; then
  echo "Integration tests failed. Please review the test results."
  exit 1
fi

echo "Integration tests passed."

