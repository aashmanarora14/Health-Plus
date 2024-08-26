#!/bin/bash

# Log for debugging
echo "BeforeInstall hook starting"

# Install Node.js 20.16.0 and npm
curl -o node-v20.16.0-linux-x64.tar.xz https://nodejs.org/dist/v20.16.0/node-v20.16.0-linux-x64.tar.xz

# Extract the downloaded tarball
sudo tar -C /usr/local --strip-components 1 -xJf node-v20.16.0-linux-x64.tar.xz

# Remove the tarball after extraction
rm node-v20.16.0-linux-x64.tar.xz

# Log Node.js and npm versions for debugging
node -v
npm -v

# Change to the project directory
cd /home/ubuntu/Health-Plus

# Install project dependencies
npm install --force

# Log for debugging
echo "npm install completed"
