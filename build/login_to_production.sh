# build/login_to_production.sh
echo "=========================================="
echo "Logging into Production"
echo "=========================================="

# Create keys directory if it doesn't exist
mkdir keys

# Decode and save the certificate key
echo $PRODUCTION_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating Production..."
sfdx force:auth:jwt:grant \
  --clientid $PRODUCTION_APP_KEY \
  --jwtkeyfile keys/server.key \
  --username $PRODUCTION_USERNAME \
  --instanceurl https://login.salesforce.com \
  --setdefaultdevhubusername \
  -a Production