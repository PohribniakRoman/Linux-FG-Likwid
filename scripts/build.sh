rm -rf ../generated/unoptimized
echo "Building unoptimized.cpp..."
/usr/bin/g++ -fdiagnostics-color=always -g /home/roman/Documents/Uni/lab2/unoptimized.cpp -o /home/roman/Documents/Uni/lab2/generated/unoptimized
echo "Built successfully!"


rm -rf ../generated/optimized
echo "Building optimized.cpp..."
/usr/bin/g++ -fdiagnostics-color=always -g /home/roman/Documents/Uni/lab2/optimized.cpp -o /home/roman/Documents/Uni/lab2/generated/optimized
echo "Built successfully!"



