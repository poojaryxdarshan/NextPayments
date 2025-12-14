#!/bin/bash
echo "=========================================="
echo "Installing Dependencies"
echo "=========================================="

# Install Salesforce CLI (new version)
echo "Installing Salesforce CLI..."
npm install --global @salesforce/cli

# Verify installation
echo "Verifying Installation..."
sf --version

echo "Dependencies Installed Successfully!"