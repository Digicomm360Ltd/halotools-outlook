#!/bin/bash

echo "Starting HaloTools..."

cd /home/site/wwwroot

# Install serve if needed
npm install -g serve

# Start MCP server in background
echo "Starting MCP server..."
node apps/mcp/dist/server.js &

# Serve Outlook app on Azure port
echo "Starting Outlook web app..."
serve -s apps/outlook/dist
