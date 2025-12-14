# build/deploy_to_dev.sh
echo "=========================================="
echo "Deploying to Dev Sandbox"
echo "=========================================="

# Deploy using modern sf CLI
echo "Deploying code to Dev Sandbox..."
sf project deploy start \
  --source-dir force-app \
  --target-org DevSandbox \
  --test-level RunLocalTests \
  --wait 30

echo "Deployment Completed Successfully!"