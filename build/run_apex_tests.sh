#!/usr/bin/env bash
set -e

ORG_ALIAS=$1

echo "=========================================="
echo "Running Apex Tests in ${ORG_ALIAS}"
echo "=========================================="

echo "Creating test-results directory..."
rm -rf test-results
mkdir -p test-results

echo "Testing code in org ${ORG_ALIAS}..."
sfdx force:apex:test:run \
  --testlevel RunLocalTests \
  --outputdir test-results \
  --resultformat tap \
  --targetusername "${ORG_ALIAS}" \
  --wait 30