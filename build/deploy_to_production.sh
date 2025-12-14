# build/deploy_to_production.sh
echo "=========================================="
echo "Deploying to Production"
echo "=========================================="

# Convert source to metadata format
echo "Converting source to metadata format..."
sfdx force:source:convert -d deploy_code -r force-app

# Deploy code to Production
echo "Deploying code to Production..."
sfdx force:mdapi:deploy \
  -u Production \
  -d deploy_code/ \
  -w -1 \
  -l RunLocalTests