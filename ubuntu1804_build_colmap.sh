#!/usr/bin/env bash

# compile colmap
build_dir=./build
if [ ! -d $build_dir ]; then
	mkdir $build_dir
fi

cd $build_dir
#CC=/usr/bin/gcc-6 CXX=/usr/bin/g++-6 cmake ..
#CC=/usr/bin/gcc CXX=/usr/bin/g++ cmake ..
cmake -D CMAKE_C_COMPILER=gcc-6 -D CMAKE_CXX_COMPILER=g++-6 ..
make -j8
