#!/bin/bash

ISE14_IMAGE=${ISE14_IMAGE:-"ise:14.7"}
XILINXD_LICENSE_FILE=${XILINXD_LICENSE_FILE:-"$HOME/.Xilinx/Xilinx.lic"}

echo ISE14_IMAGE: $ISE14_IMAGE
echo XILINXD_LICENSE_FILE: $XILINXD_LICENSE_FILE
echo WORKPLACE: $PWD

ISE_PATH=/opt/Xilinx/14.7/ISE_DS

# these veriables follow values set by settings64.sh script
XILINX_DSP=$ISE_PATH/ISE
XILINX_EDK=$ISE_PATH/EDK
XILINX_PLANAHEAD=$ISE_PATH/PlanAhead
XILINX=$ISE_PATH/ISE
LD_LIBRARY_PATH=$ISE_PATH/ISE/lib/lin64:$ISE_PATH/EDK/lib/lin64:$ISE_PATH/common/lib/lin64
XILINX_PATH=$ISE_PATH/ISE/bin/lin64:$ISE_PATH/ISE/sysgen/util:$ISE_PATH/ISE/../../../DocNav:$ISE_PATH/PlanAhead/bin:$ISE_PATH/EDK/bin/lin64:$ISE_PATH/EDK/gnu/microblaze/lin/bin:$ISE_PATH/EDK/gnu/powerpc-eabi/lin/bin:$ISE_PATH/EDK/gnu/arm/lin/bin:$ISE_PATH/EDK/gnu/microblaze/linux_toolchain/lin64_be/bin:$ISE_PATH/EDK/gnu/microblaze/linux_toolchain/lin64_le/bin:$ISE_PATH/common/bin/lin64


docker run --rm \
    --user $(id -u):$(id -g) \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/group:/etc/group:ro  \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e PATH=/bin:/sbin:$XILINX_PATH \
    -e LD_LIBRARY_PATH=$LD_LIBRARY_PATH \
    -e XILINXD_LICENSE_FILE=$XILINXD_LICENSE_FILE \
    -e XILINX_DSP=$XILINX_DSP \
    -e XILINX_EDK=$XILINX_EDK \
    -e XILINX_PLANAHEAD=$XILINX_PLANAHEAD \
    -e XILINX=$XILINX \
    -v "$HOME:$HOME" \
    -w $HOME \
    -v /dev/bus/usb:/dev/bus/usb \
    --device-cgroup-rule='c *:* rmw' \
    -ti $ISE14_IMAGE $@

