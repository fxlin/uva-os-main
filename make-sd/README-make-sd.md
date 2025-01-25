# How to prepare SD cards for experiments

Last updated: Jan 2025

This script: 
- partitions a given SD card into two FAT32 partitions
- copies files to the two partitions
    - bootfs/ contains the rpi3 firmware and configuration files, and will contain the kernel image to be built
    - UVA-OS/ contains user data files 

Environment: Linux only (e.g. Ubuntu 22.04 native, or VM) 

WSL2 users: understand the script and do it manually from Windows. 
We do not provide a WSL2 script b/c mounting sd cards from WSL2 is tedious, due to Windows security policies.

*Cannot be used with WSL2 (SD card mounting is tedious)*

## Requirements
A sd card with capacity >=16GB 

## Get files

- bootfs/ contains the rpi3 firmware and configuration files, which are 
are already provided. The partition will contain the kernel image to be built. 
- UVA-OS/ contains user data files (music, picture, game assets). They are to be provided by the user. 
  - UVA students can download needed assets from https://virginia.app.box.com/folder/303726824749 (UVA login required) 


## Run the scripts

1. Plug in the SD card to the computer. VM users: further attach the SD card reader to the VM instance [How?](../docs/vm/vmware.md) 

2. In Linux, use 'lsblk' to find the sd card device id, e.g. 
```
sdb      8:16   1  14.8G  0 disk 
├─sdb1   8:17   1   499M  0 part 
└─sdb2   8:18   1  14.3G  0 part
```

3. 
```
sudo ./make-sd.sh /dev/sdX
```
