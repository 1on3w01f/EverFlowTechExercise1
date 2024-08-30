#!/bin/bash
# Script to perform code linting for the ASP.NET Core application

echo "Starting code linting..."

# Run dotnet format to check for code style and formatting issues
dotnet format --verify-no-changes

if [ $? -ne 0 ]; then
  echo "Code formatting issues detected. Please fix them before proceeding."
  exit 1
fi

echo "Code linting passed."

