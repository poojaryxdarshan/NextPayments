# build/install_dependencies.sh
echo "=========================================="
echo "Installing Dependencies"
echo "=========================================="

# Install Salesforce CLI Globally with Sudo
echo "=========================================="
echo "Installing Salesforce CLI..."
echo "=========================================="
sudo npm install --global @salesforce/cli

# Verify Installation
echo "=========================================="
echo "Verifying Installation..."
echo "=========================================="
sf --version

echo "=========================================="
echo "Dependencies Installed Successfully!"
echo "=========================================="