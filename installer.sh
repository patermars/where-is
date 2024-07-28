#!/bin/bash

# Name: installer.sh
# Purpose: Install the where-is script

# Check if where-is script exists in the current directory
if [ ! -f ./where-is ]; then
  echo "Error: where-is script not found in the current directory."
  exit 1
fi

# Make the where-is script executable
chmod +x where-is
if [ $? -ne 0 ]; then
  echo "Error: Failed to make where-is executable."
  exit 1
fi

# Move the where-is script to /usr/local/bin/
sudo mv where-is /usr/local/bin/
if [ $? -ne 0 ]; then
  echo "Error: Failed to move where-is to /usr/local/bin/. You may need to run this script with sudo."
  exit 1
fi

echo "where-is has been successfully installed."
