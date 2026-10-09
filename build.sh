#!/bin/bash
make clean
make CXX=g++-14 STATIC=false GPU_SUPPORT=true INTEL_GPU_SUPPORT=true -j$(nproc)
sudo make install
sudo make setcap
