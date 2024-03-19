# Note: it is necessary to go so low for libXp.so.6. It disappears in 
# Ubuntu 15.10, and 14.04 is the last LTS release including it.
FROM ubuntu:14.04 

ADD Xilinx_ISE_DS_Lin_14.7_1015_1.tar /xilinx
ADD scripts /scripts

# I don't want separate layers!
RUN scripts/install.sh

