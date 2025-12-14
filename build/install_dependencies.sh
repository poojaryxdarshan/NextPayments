#!/bin/bash
echo "=========================================="
echo "Installing Dependencies"
echo "=========================================="

# Install Salesforce CLI globally with sudo
echo "Installing Salesforce CLI..."
sudo npm install --global @salesforce/cli

# Verify installation
echo "Verifying installation..."
sf --version

echo "Dependencies installed successfully!"