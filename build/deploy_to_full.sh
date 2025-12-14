# build/deploy_to_full.sh
echo "=========================================="
echo "Deploying to Full Sandbox"
echo "=========================================="

# Deploy using modern sf CLI
echo "=========================================="
echo "Deploying Code to Full Sandbox..."
echo "=========================================="
sf project deploy start \
  --source-dir force-app \
  --target-org FullSandbox \
  --test-level RunLocalTests \
  --wait 30

echo "=========================================="
echo "Deployment Completed Successfully!"
echo "=========================================="