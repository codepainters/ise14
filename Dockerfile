FROM ubuntu:22.04 

ADD Xilinx_ISE_DS_Lin_14.7_1015_1.tar /xilinx
ADD scripts /scripts

# I don't want separate layers!
RUN scripts/install.sh

#RUN mv /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.distrib
#RUN mv /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.0.8 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.0.8.distrib
#RUN ln /usr/lib/x86_64-linux-gnu/libstdc++.so.6 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6
#RUN ln /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.30 /opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/libstdc++.so.6.0.30

