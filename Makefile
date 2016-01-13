all: bestchain parser

bestchain: bestchain.cpp include/hash.hpp
	g++ -O3 $< -Iinclude -I. libconsensus/*.cpp -std=c++14 -o $@

parser: parser.cpp functors.hpp include/block.hpp include/hash.hpp include/slice.hpp include/threadpool.hpp
	g++ -pthread -O3 $< -Iinclude -I. libconsensus/*.cpp -std=c++14 -o $@

clean:
	rm -f bestchain parser
