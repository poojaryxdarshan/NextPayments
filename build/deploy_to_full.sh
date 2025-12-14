# build/deploy_to_full.sh
echo "=========================================="
echo "Deploying to Full Sandbox"
echo "=========================================="

# Convert source to metadata format
echo "Converting source to metadata format..."
sfdx force:source:convert -d deploy_code -r force-app

# Deploy code to Full Sandbox
echo "Deploying code to Full Sandbox..."
sfdx force:mdapi:deploy \
  -u FullSandbox \
  -d deploy_code/ \
  -w -1 \
  -l RunLocalTests