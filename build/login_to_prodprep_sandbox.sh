# build/login_to_prodprep_sandbox.sh
echo "=========================================="
echo "Logging into ProdPrep Sandbox"
echo "=========================================="

# Create keys directory if it doesn't exist
mkdir keys

# Decode and save the certificate key
echo $PRODPREP_SANDBOX_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating ProdPrep Sandbox..."
sfdx force:auth:jwt:grant \
  --clientid $PRODPREP_SANDBOX_APP_KEY \
  --jwtkeyfile keys/server.key \
  --username $PRODPREP_SANDBOX_USERNAME \
  --instanceurl https://test.salesforce.com \
  --setdefaultdevhubusername \
  -a ProdPrepSandbox