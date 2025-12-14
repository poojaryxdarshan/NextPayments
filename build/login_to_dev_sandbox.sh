# build/login_to_dev_sandbox.sh
echo "=========================================="
echo "Logging into Dev Sandbox"
echo "=========================================="

# Create keys directory if it doesn't exist
mkdir keys

# Decode and save the certificate key
echo $DEV_SANDBOX_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating Dev Sandbox..."
sfdx force:auth:jwt:grant \
  --clientid $DEV_SANDBOX_APP_KEY \
  --jwtkeyfile keys/server.key \
  --username $DEV_SANDBOX_USERNAME \
  --instanceurl https://test.salesforce.com \
  --setdefaultdevhubusername \
  -a DevSandbox