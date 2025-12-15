# build/deploy_to_production.sh
echo "=========================================="
echo "Deploying to Production Sandbox"
echo "=========================================="

# Deploy using modern sf CLI
echo "=========================================="
echo "Deploying Code to Production Sandbox..."
echo "=========================================="
sf project deploy start \
  --source-dir force-app \
  --target-org Production \
  --test-level RunLocalTests \
  --wait 30

echo "=========================================="
echo "Deployment Completed Successfully!"
echo "=========================================="