# build/login_to_full_sandbox.sh
echo "=========================================="
echo "Logging into Full Sandbox"
echo "=========================================="

# Create keys directory if it doesn't exist
mkdir keys

# Decode and save the certificate key
echo $FULL_SANDBOX_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating Full Sandbox..."
sfdx force:auth:jwt:grant \
  --clientid $FULL_SANDBOX_APP_KEY \
  --jwtkeyfile keys/server.key \
  --username $FULL_SANDBOX_USERNAME \
  --instanceurl https://test.salesforce.com \
  --setdefaultdevhubusername \
  -a FullSandbox