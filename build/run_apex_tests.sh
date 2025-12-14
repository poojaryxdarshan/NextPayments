#!/usr/bin/env bash
set -e

ORG_ALIAS=$1

echo "=========================================="
echo "Running Apex Tests in ${ORG_ALIAS}"
echo "=========================================="

echo "Creating Test-Results Directory..."
rm -rf test-results
mkdir -p test-results

echo "Listing Available Tests in Org ${ORG_ALIAS}..."
sf apex list test --target-org "${ORG_ALIAS}" || echo "No Tests Found Yet"

echo "Testing Code in Org ${ORG_ALIAS}..."
sf apex run test \
  --test-level RunLocalTests \
  --output-dir test-results \
  --result-format tap \
  --target-org "${ORG_ALIAS}" \
  --wait 30

echo "=========================================="
echo "Tests Completed Successfully!"
echo "=========================================="