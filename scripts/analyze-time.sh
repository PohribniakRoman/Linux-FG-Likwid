echo "Analyzing unoptimized.cpp"
echo "Processing..."
/usr/bin/time --verbose ../generated/unoptimized 
echo "Analyzed successfully!"

echo "Analyzing optimized.cpp"
echo "Processing..."
/usr/bin/time --verbose ../generated/optimized 
echo "Analyzed successfully!"

