# build/deploy_to_dev.sh
echo "=========================================="
echo "Deploying to Dev Sandbox"
echo "=========================================="

# Convert source to metadata format
echo "Converting source to metadata format..."
sfdx force:source:convert -d deploy_code -r force-app

# Deploy code to Dev Sandbox
echo "Deploying code to Dev Sandbox..."
sfdx force:mdapi:deploy \
  -u DevSandbox \
  -d deploy_code/ \
  -w -1 \
  -l RunLocalTests