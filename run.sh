#!/bin/bash

rm -rf build
mkdir build
cd build
cmake ..
make
./kostil-engine
echo "Done"