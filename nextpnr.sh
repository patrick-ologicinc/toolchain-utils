#!/usr/bin/bash

sudo apt-get install git cmake clang-format qt5-default python3-dev \
    libboost-dev libboost-filesystem-dev libboost-thread-dev \
    libboost-program-options-dev libboost-python-dev libeigen3-dev

git clone https://github.com/YosysHQ/nextpnr.git nextpnr
cd nextpnr

# Assumes icestorm with chipdbs installed in /usr/local/share/icebox.
# If not, use -DICEBOX_ROOT=/path/to/share/icebox
cmake -DARCH=ice40 .
make -j$(nproc)
sudo make install

cd ..
