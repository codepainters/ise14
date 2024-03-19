#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive
export TERM=xterm-256color

# Install all the necessary dependencies
apt update
apt upgrade -y
apt install -y --no-install-recommends \
    libncurses5 libstdc++5 \
    libx11-6 libglib2.0-0 libsm6 libxi6 libxm4 libxp6 \
    libxrender1 libxrandr2 libfreetype6 libfontconfig1 \
    libxcursor1 libusb-0.1-4

# Install actual Xilinx software in headless mode
yes |  /xilinx/Xilinx_ISE_DS_Lin_14.7_1015_1/bin/lin64/batchxsetup \
    --batch scripts/headless-install.sh

# These hacks are necessary for the Impact tool to work
# with the USB cable. 
# - it checks if driver installation was performed, by checking 
#   the /usr/share/xusbdfwu.hex file. It's fine to symlink it. 
# - it loks for libusb.so (and fails), symlinking helps.
#
# Note: Impact uses libusb-0.1 installed above! This symlink is 
# not enough, as it fails to use libusb-1.0. Mess...
ln -s /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xusbdfwu.hex /usr/share/
ln -s libusb-1.0.so.0 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libusb.so

# Most likely unnecessary, leaving for reference.
# mv /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.distrib
# mv /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.0.8 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.0.8.distrib
# ln /usr/lib/x86_64-linux-gnu/libstdc++.so.6 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6
# ln /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.30 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.0.30

# cleanup
rm -rf /var/lib/apt/lists/*

