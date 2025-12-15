#build/validate_deployment.sh
ORG_ALIAS=$1

echo "=========================================="
echo "Validate ${ORG_ALIAS} Deployment"
echo "=========================================="

echo "Running Validation Deployment with Tests in ${ORG_ALIAS}..."
sf project deploy validate \
    --source-dir force-app \
    --target-org "${ORG_ALIAS}" \
    --test-level RunLocalTests \
    --wait 30

echo "=========================================="
echo "Validation Completed Successfully!"
echo "=========================================="