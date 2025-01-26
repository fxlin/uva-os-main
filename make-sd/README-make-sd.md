# How to prepare SD cards for experiments

Last updated: Jan 2025


## Requirements
A sd card with capacity >=16GB 

## Get files

- bootfs/ contains the rpi3 firmware and configuration files, which are 
are already provided. The partition will contain the kernel image to be built. 
- UVA-OS/ contains user data files (music, picture, game assets). They are to be provided by the user. 
  - UVA students can download needed assets from [https://virginia.app.box.com/folder/303726824749](https://virginia.box.com/s/nvduzmsulhcixdjvsgc3a9oierbllzmo) (UVA login required) 

## Instructions for WSL2 users
 - We do not provide a WSL2 script b/c mounting sd cards from WSL2 is tedious, due to Windows security policies.
 - Instead, do the following manually:
    - Plug in the SD card to your Windows machine
    - Create two new partitions, both FAT32. partition 1: 100MB; partiton 2: spanning the rest of the SD card. 
        - This can be done via Windows "Computer Management" -> Storage -> Disk Management
        - More details can be found from ChatGPT. 
    - Copy the files from `bootfs/` and `UVA-OS/` to partition 1 and 2, respectively.
    - (optional) In Windows, create label for partition 1 as "bootfs" and partition 2 as "UVA-OS"
    - Unmount the SD card from Windows
    - Plug the SD card into the Rpi3

See the script `make-sd.sh` for details.

## Instructions for VM or Linux users

Use script `make-sd.sh`, which:  
- partitions a given SD card into two FAT32 partitions
- copies files to the two partitions
    - bootfs/ contains the rpi3 firmware and configuration files, and will contain the kernel image to be built
    - UVA-OS/ contains user data files 

Environment: Linux only (e.g. Ubuntu 22.04 native, or VM) 


*Cannot be used with WSL2 (SD card mounting is tedious)*

**Run the scripts**

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
