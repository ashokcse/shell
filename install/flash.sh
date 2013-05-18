#!/bin/sh
# --------------------------------------------------------------------------#
# This script assumes that "install_flash_player_11_linux.x86_64.tar.gz"   	#
# file is present in the current working directory and creates "temp" 		  #
# temporarily.																                              #
# --------------------------------------------------------------------------#

# --------------------------------------------------------------------------#
# Creating relevant variables												                        #
# --------------------------------------------------------------------------#
mkdir temp
tar -zxvf install_flash_player_11_linux.x86_64.tar.gz -C temp
cd temp	
var=`ls | grep "flash"`

# --------------------------------------------------------------------------#
# Copying the relevant files. 												                      #
# --------------------------------------------------------------------------#
sudo cp $var /usr/lib/mozilla/plugins/
sudo cp -r usr/* /usr
sudo rm -r *

# --------------------------------------------------------------------------#
# Cleanup operations.														                            #
# --------------------------------------------------------------------------#
cd ..
rm -r temp
