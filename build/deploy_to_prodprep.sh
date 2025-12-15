# build/deploy_to_prodprep.sh
echo "=========================================="
echo "Deploying to ProdPrep Sandbox"
echo "=========================================="

# Deploy using modern sf CLI
echo "=========================================="
echo "Deploying Code to ProdPrep Sandbox..."
echo "=========================================="
sf project deploy start \
  --source-dir force-app \
  --target-org ProdPrepSandbox \
  --test-level RunLocalTests \
  --wait 30

echo "=========================================="
echo "Deployment Completed Successfully!"
echo "=========================================="