# build/run_sfdx_scanner.sh
echo "=========================================="
echo "Running SFDX Scanner Analysis"
echo "=========================================="

# Install JDK (required for PMD)
echo "Installing OpenJDK 11..."
sudo apt-get update -qq
sudo apt-get install -y openjdk-11-jdk

# Install SFDX Scanner Plugin
echo "Installing SFDX Scanner Plugin..."
sf plugins install @salesforce/sfdx-scanner

# Verify Istallation
echo "Verifying Scanner Installation..."
sf plugins

# Run SFDX Scanner
echo "Running SFDX Scanner on Codebase..."
sf scanner run \
  --target "force-app/**/*.cls,force-app/**/*.trigger" \
  --format "csv" \
  --outfile "sfdxScannerAnalysis.csv" \

echo "=========================================="
echo "Scanner Analysis Complete!"
echo "=========================================="

# Display Results Summary
if [ -f sfdxScannerAnalysis.csv ]; then
  echo "Results Saved to sfdxScannerAnalysis.csv"
  echo "========================================"
  echo "Violation Details:"
  echo "========================================"
  
  # Print with column formatting for better readability
  column -t -s ',' sfdxScannerAnalysis.csv | head -20
  
  # Count violations
  VIOLATION_COUNT=$(tail -n +2 sfdxScannerAnalysis.csv | wc -l)
  echo ""
  echo "Total Violations Found: $VIOLATION_COUNT"
else
  echo "Warning: No Results File Generated"
fi