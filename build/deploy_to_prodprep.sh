# build/deploy_to_prodprep.sh
echo "=========================================="
echo "Deploying to ProdPrep Sandbox"
echo "=========================================="

# Convert source to metadata format
echo "Converting source to metadata format..."
sfdx force:source:convert -d deploy_code -r force-app

# Deploy code to ProdPrep Sandbox
echo "Deploying code to ProdPrep Sandbox..."
sfdx force:mdapi:deploy \
  -u ProdPrepSandbox \
  -d deploy_code/ \
  -w -1 \
  -l RunLocalTests