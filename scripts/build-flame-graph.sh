echo "Generating Flame-Graph for optimized.cpp"
echo "Generating..." 
sudo perf record -F 50 --call-graph dwarf ../generated/optimized
sudo perf script | ../../FlameGraph/stackcollapse-perf.pl |
../../FlameGraph/stackcollapse-recursive.pl |
../../FlameGraph/flamegraph.pl > ../generated/FG-Optimized.svg
echo "Sccesss!"

echo "Generating Flame-Graph for unoptimized.cpp"
echo "Generating..." 
sudo perf record -F 50 --call-graph dwarf ../generated/unoptimized
sudo perf script | ../../FlameGraph/stackcollapse-perf.pl |
../../FlameGraph/stackcollapse-recursive.pl |
../../FlameGraph/flamegraph.pl > ../generated/FG-Unoptimized.svg
echo "Sccesss!"