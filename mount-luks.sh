#!/bin/bash 
# Script used to decrypt and mount luks formated sd card
# usage ./mount-sd.sh device mountpoint

DEVICE=$1
MOUNTPOINT=$2

#sudo cryptsetup luksOpen $DEVICE luks
#sudo mount $DEVICE /dev/mapper/luks $MOUNTPOINT
echo "Dont forget to unmount and run cryptsecrets luksClose"
