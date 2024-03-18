################################################################################
# Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
################################################################################

destination_dir=/opt/Xilinx

# &Import tool preferences from previous version
copy_preferences=Y

# &Use multiple CPU cores for faster installation
# Enabling this option will speed up installation but may slow down other active applications.
use_multiple_cores=Y

application=Acquire or Manage a License Key::1


################################################################
# ISE WebPACK, uncomment this block and
# comment all other blocks to install ISE WebPACK
################################################################

package=ISE WebPACK::1
application=setupEnv.sh::0
application=Install Linux System Generator Info XML::0
application=Ensure Linux System Generator Symlinks::0
application=Install Cable Drivers::0


################################################################
# ISE Design Suite Logic Edition, uncomment this block and
# comment all other blocks to install ISE Design Suite Logic Edition
################################################################

# package=ISE Design Suite Logic Edition::0
# application=setupEnv.sh::0
# application=Ensure Linux System Generator Symlinks::0
# application=Install Linux System Generator Info XML::0
# application=Configure WebTalk::0
# application=Enable WebTalk to send software, IP and device usage statistics to Xilinx (Always enabled for WebPACK license)::0
# application=Install Cable Drivers::0


################################################################
# ISE Design Suite Embedded Edition, uncomment this block and
# comment all other blocks to install ISE Design Suite Embedded Edition
################################################################

# package=ISE Design Suite Embedded Edition::0
# application=setupEnv.sh::0
# application=Ensure Linux System Generator Symlinks::0
# application=Install Linux System Generator Info XML::0
# application=Configure WebTalk::0
# application=Enable WebTalk to send software, IP and device usage statistics to Xilinx (Always enabled for WebPACK license)::0
# application=Install Cable Drivers::0


################################################################
# ISE Design Suite DSP Edition, uncomment this block and
# comment all other blocks to install ISE Design Suite DSP Edition
################################################################

# package=ISE Design Suite DSP Edition::0
# application=setupEnv.sh::0
# application=Ensure Linux System Generator Symlinks::0
# application=Install Linux System Generator Info XML::0
# application=Configure WebTalk::0
# application=Enable WebTalk to send software, IP and device usage statistics to Xilinx (Always enabled for WebPACK license)::0
# application=Install Cable Drivers::0
# application=Version Equalizer::0


################################################################
# ISE Design Suite System Edition, uncomment this block and
# comment all other blocks to install ISE Design Suite System Edition
################################################################

# package=ISE Design Suite System Edition::1
# application=setupEnv.sh::0
# application=Ensure Linux System Generator Symlinks::0
# application=Install Linux System Generator Info XML::0
# application=Configure WebTalk::0
# application=Enable WebTalk to send software, IP and device usage statistics to Xilinx (Always enabled for WebPACK license)::0
# application=Install Cable Drivers::0
# application=Version Equalizer::0


################################################################
# Lab Tools - Standalone Installation, uncomment this block and
# comment all other blocks to install Lab Tools - Standalone Installation
################################################################

# package=Lab Tools - Standalone Installation::0
# application=Configure WebTalk::0
# application=Enable WebTalk to send software, IP and device usage statistics to Xilinx (Always enabled for WebPACK license)::0
# application=Install Cable Drivers::0
