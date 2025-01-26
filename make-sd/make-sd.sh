#!/bin/bash

# This script partitions, formats, and copies files to an SD card.
# to be used on Linux only (e.g. Ubuntu 22.04 native, or VM) 

# usage: 
# 1. use 'lsblk' to find the sd card device id, e.g. 
# sdb      8:16   1  14.8G  0 disk 
# ├─sdb1   8:17   1   499M  0 part 
# └─sdb2   8:18   1  14.3G  0 part

# 2. 
# sudo ./make-sd.sh /dev/sdX

# Replace these paths with the actual source directories
# "bootfs" -- firmware etc
SOURCE1="./bootfs"
# "UVA-OS" -- user data
SOURCE2="./UVA-OS"

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root."
  exit 1
fi

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /dev/sdX"
  exit 1
fi

DEVICE=$1

# Step 1: Confirm the device exists
if [ ! -b "$DEVICE" ]; then
  echo "Error: Device $DEVICE not found."
  exit 1
fi

echo "Checking for mounted partitions on $DEVICE..."
for PART in $(lsblk -no MOUNTPOINT ${DEVICE}?*); do
  if [ -n "$PART" ]; then
    echo "Unmounting $PART..."
    umount $PART || { echo "Failed to unmount $PART"; exit 1; }
  fi
done

# Step 2: Partition the SD card
echo "Partitioning the device..."
parted $DEVICE --script mklabel msdos
parted $DEVICE --script mkpart primary fat32 1MiB 500MiB
parted $DEVICE --script mkpart primary fat32 500MiB 100%

# Step 3: Format the partitions with quick format
echo "Formatting the partitions..."
mkfs.fat -F 32 -n bootfs ${DEVICE}1
mkfs.fat -F 32 -n UVA-OS ${DEVICE}2

# Step 4: Mount the partitions
MOUNT_DIR1=$(mktemp -d)
MOUNT_DIR2=$(mktemp -d)

mount ${DEVICE}1 $MOUNT_DIR1
mount ${DEVICE}2 $MOUNT_DIR2

# Step 5: Copy files to the partitions
echo "Copying files to the first partition..."
rsync -a --no-owner --no-group $SOURCE1/ $MOUNT_DIR1/

if [ ! -d "$SOURCE2" ]; then
  echo "Directory $SOURCE2 does not exist. Creating it..."
  mkdir -p $SOURCE2
fi

echo "Copying files to the second partition..."
rsync -a --no-owner --no-group $SOURCE2/ $MOUNT_DIR2/

# Step 6: Unmount the partitions and clean up
echo "Unmounting partitions..."
umount $MOUNT_DIR1
umount $MOUNT_DIR2

rmdir $MOUNT_DIR1
rmdir $MOUNT_DIR2

# Completion message
echo "SD card setup is complete."
