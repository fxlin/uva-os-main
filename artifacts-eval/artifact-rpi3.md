
# 2. Raspi3 (real hardware)

## 2.1 Prerequisites 

### 2.1.1 Setup the raspi3 hardware
 
https://github.com/fxlin/uva-os-main/blob/main/docs/rpi3/rpi3-setup.md

### 2.1.2 Prepare SD cards for experiments

Note: we provide a zip file containing all contents needed for the SD card (`uva-os-sdcard-20250730-minimum.zip`)

**Instructions:**

https://github.com/fxlin/uva-os-main/blob/main/make-sd/README-make-sd.md

### 2.2.2 How to change OS configurations

### 2.2.2.1 Kernel image selection 

Plug in the SD card to a PC or Mac. 

Open the partition `bootfs` (which is FAT and should be automatically mounted and readable by both Windows and Mac), find the file named `config.txt`

Comment/Uncomment lines as below (an example is shown)

```
# fxl's config for v8 kernel
...
#kernel=kernel8-rpi3.img
kernel8-rpi3-Ndonuts.img
```

Eject the SD card from PC or Mac. Plug it into the Raspberry Pi 3 and power it on.

### 2.2.2.2 Init script selection

Plug in the SD card to a PC or Mac. 

Open the partition "UVAOS" (which is FAT and should be automatically mounted and readable by both Windows and Mac), find the file named `initrc.txt`

Rename other initrc scripts (e.g. `initrc 8nes asap quiet.txt`) under UVAOS/ to overwrite `initrc.txt` or change the content of `initrc.txt` to point to the desired init script.

Eject the SD card from PC or Mac. Plug it into the Raspberry Pi 3 and power it on.

## 2.2 Donut

See 2.1. Select kernel image to be `kernel8-rpi3-Ndonuts.img`. Power on the Raspberry Pi 3 and wait for the boot to complete.

Needed accessories: external display. 

## 2.3 Menu

Select `kernel8-rpi3.img` as the kernel image in `config.txt`.

Rename `initrc - menu simple.txt` as the init script `initrc.txt`.

Needed accessories: external display; USB keyboard.

## 2.4 Mario

Run `Menu` (see 2.3) and select `Mario` from the menu.

Needed accessories: external display; USB keyboard.

## 2.5 Sysmon

Run `Menu` (see 2.3) and select `Mario2` from the menu.

Needed accessories: external display; USB keyboard.

## 2.6 Shell & Utilities

Select `kernel8-rpi3.img` as the kernel image in `config.txt`.

Select `initrc -empty.txt` as the init script in `initrc.txt`.

Needed accessories: UART dongle.

## 2.7 Slider

Run `Menu` (see 2.3) and select `Slider` from the menu.

Needed accessories: external display; USB keyboard.

## 2.8 Buzzer

Run `Menu` (see 2.3) and select `Buzzer` from the menu.

Needed accessories: external display; USB keyboard; external earphone or speaker.

## 2.9 Music Player

Run `Menu` (see 2.3) and select `Music` from the menu.

Needed accessories: external display; USB keyboard; external earphone or speaker.


## 2.10 DOOM

Run `Menu` (see 2.3) and select `DOOM` from the menu.

Needed accessories: external display; USB keyboard.

## 2.11 Blockchain

Run `Menu` (see 2.3) and select `Blockchain` from the menu.

Needed accessories: UART dongle (to see the output).

## 2.12 Video Player

Run `Menu` (see 2.3) and select `video` from the menu.

Needed accessories: external display; USB keyboard; external earphone or speaker.

Known issue: image and sound may have stuttering artifacts due to recent performance regression. 

## 2.13 Desktop

Select `kernel8-rpi3.img` as the kernel image in `config.txt`.

Rename `initrc - demo.txt` as `initrc.txt`.

Needed accessories: external display; USB keyboard. 

## 2.14 8 Marios

Select `kernel8-rpi3.img` as the kernel image in `config.txt`.

Rename `initrc 8nes asap quiet.txt` as `initrc.txt`.

Needed accessories: external display; USB keyboard. 


