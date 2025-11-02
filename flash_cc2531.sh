#!/bin/bash

# Stop on errors
set -e

# Install dependencies
sudo apt-get update
sudo apt-get install -y git wget unzip

# Clone and compile flash_cc2531
if [ ! -d "flash_cc2531" ]; then
  git clone https://github.com/jmichault/flash_cc2531.git
fi
cd flash_cc2531
make
cd ..

# Download and unzip firmware
if [ ! -f "CC2531ZNP-Prod.hex" ]; then
  wget https://github.com/Koenkk/Z-Stack-firmware/raw/master/coordinator/Z-Stack_Home_1.2/bin/default/CC2531_DEFAULT_20211115.zip
  unzip CC2531_DEFAULT_20211115.zip
fi

# Erase and flash module
cd flash_cc2531
sudo ./cc_erase
sudo ./cc_write ../CC2531ZNP-Prod.hex
cd ..

echo "Flashing complete!"
