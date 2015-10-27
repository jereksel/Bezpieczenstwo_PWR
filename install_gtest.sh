#!/bin/sh
set -e
wget https://googletest.googlecode.com/files/gtest-1.7.0.zip
unzip gtest-1.7.0.zip
mkdir gtest-1.7.0/build
cd gtest-1.7.0/build
cmake ..
make
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH