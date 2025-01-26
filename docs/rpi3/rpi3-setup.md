# Setup the raspi3 hardware

## Table of Contents

- [Check list](#check-list)
- [Detailed descriptions](#detailed-descriptions)
    - [Student provide: An Rpi3 board (Model B or B+)](#student-provide-an-rpi3-board-model-b-or-b)
    - [We provide the following](#we-provide-the-following-based-on-your-needs)
- [Prepare SD card](#prepare-for-sd-card)
- [Build and install the kernel](#build-and-install-the-kernel)
- [Plug in the serial cable](#plug-in-the-serial-cable)
- [Configure the serial emulator](#configure-the-serial-emulator)
    - [VM/Linux users](#vmlinux-users)
    - [WSL2 users](#wsl2-users)
- [Power up RPi3 & validate](#power-up-rpi3--validate)
- [GAMEHAT setup](#gamehat-setup)
## Check list

Students buy:
| Item                                | Provided By | Notes                                                                 |
|-------------------------------------|-------------|-----------------------------------------------------------------------|
| Rpi3 board (Model B or B+)          | Student     | [link](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)  |


Loaner instructions for students:
1. students specify which of the following items are needed. NB: for lab1--3, only item 1--5 are in use.
2. if you need item 1, specify: are you using WSL2 or VM
4. contact: Afsara Benazir (TA) hys4qm@
5. Hardware-kit pickup spreadsheet (mark AFTER the pickup) [link](https://myuva.sharepoint.com/:x:/s/XSEL-afsara-next/EdYnzYErdZ1AnqmaAjGY2_QBQWsVQ2lCzCud1rGTHytnIQ?e=k0St0w)
6. keep any package and cables that come with items (esp item 4 the display), and return the item in its original package. 

| Item                                | Needed for | Notes                                                                 |
|-------------------------------------|-------------|-----------------------------------------------------------------------|
| 1. A USB-UART dongle                    | Lab1 & later  | WSL2 users: SH-V09C5. VM users: legacy FTDI dongles                                                              |
| 2. A micro SD card (>=16GB)                  | Lab1 & later  |                                                |
| 3. A micro SD card reader that plugs in to personal computers                      | Lab1 & later  |                                                                       |
| 4. A display w/ HDMI + an HDMI cable                     | Lab1 & later  | The loaner display comes with the needed HDMI-microHDMI cable & USB-C power supply   |
| 5. A power supply for rpi3 (Micro USB, 5v3A, with inline switch) | Lab1 & later   | In a pinch, rpi3 can be powered via a microUSB cable connected to any USB-A port (e.g. from your PC, or any cheap USB charger). That should suffice for lab1/2 which do not draw high power. For later labs, better use 5v3A charger to provide enough power                                                            |
| 6. USB keyboard                        | Lab4 & later  |                                                                       |
| 7. Waveshare GAME HAT                         | Lab5+  |                                                             |
| - Battery  (18650 lithium)                      |   | can be charged in place                                                             |
| - HDMI cable                               |   |  for debugging with an external display                                                           |
| - 40pin header extender, angled                    |   |   for debugging by exposing its UART port                                                           |
| - Speaker                                  |   |                                                             |


## Detailed descriptions

### Student provide: An Rpi3 board (Model B or B+) [link](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)

![](rpi3_resized.jpg)


### We provide the following, based on your needs:

- A USB-serial cable. We use: SH-V09C5

![alt text](image-8.png)

> Some old adapters no longer works for WSL2 (Windows driver issues); however they still works for Linux/VM. 

- A 32GB micro SD card

- A SD card reader

- A portable display (inc. HDMI cable and USB-C power supply)

- USB keyboard

- Power supply for Rpi3

- Waveshare GAME HAT (inc. battery; HDMI cable; 40pin header extender; speaker) 


## Prepare SD card 

Connect the SD card reader to VM. Then in the VM: 
```
cd uva-os-main/make-sd/ 
sudo ./make-sd.sh /dev/sdX
```

Details here: [How to prepare SD cards for experiments](../../make-sd/README-make-sd.md)

## Build and install the kernel 
```
cd uva-os-world1
export PLAT=rpi3
```

| Action              | Command             |
|---------------------|---------------------|
| To clean up         | `./cleanall.sh`     |
| To build everything | `./makeall.sh`      |

If everything builds OK, `kernel/Makefile` should copy the kernel image (kernel8-rpi3.img) to the SD card, in the "bootfs" partition. See `kernel/Makefile` for details.

## Plug in the serial cable

```
Rpi3 <-- a USB-serial cable ---> PC (running a temrinal emulator) 
```

After you get a serial cable, you need to test your connection. If you never did this before I recommend you to follow [this guide](https://cdn-learn.adafruit.com/downloads/pdf/adafruits-raspberry-pi-lesson-5-using-a-console-cable.pdf) It describes the process of connecting your Raspberry PI via a serial cable in great details. Basically, you run Raspberry's official OS to ensure the hardware setup is fine. 

![](https://cdn-learn.adafruit.com/assets/assets/000/035/695/small360/learn_raspberry_pi_piconsole_bb.png?1473736644)

## Configure the serial emulator

### VM/Linux users: see [VMware](../vm/vmware.md)

```
sudo minicom -b 115200 -o -D /dev/ttyUSB0 -C /tmp/minicom.log
```

### WSL2 users: PuTTY recommended. A sample configuration below. 

![image-20210210120642726](image-20210210120642726.png)

Change the terminal settings like this:

![alt text](image-2.png)

Note: your PC may give different names to the USB-serial dongle, e.g. COM4. Find it out by looking at Windows Device Manager. 

### Power up RPi3 & validate

Use the provided power supply. In a pinch, rpi3 can be powered via a microUSB cable connected to any USB-A port (e.g. from your PC, or any cheap USB charger). That should suffice for lab1/2 which do not draw high power. For later labs, better use 5v3A charger to provide enough power. 

If everything works OK, the provided "test" kernel (make-sd/bootfs/kernel8-rpi3.img, md5sum 074d1c0bae0a3572bc302d8f3d017a97) will boot and show on the UART: 

![image](https://github.com/user-attachments/assets/d6e1f4a1-5f8b-4061-add5-51ef65eb627f)

To test the display, try `make-sd/bootfs/kernel8-rpi3-display.img` (to use it, rename this file to kernel8-rpi3.img on SD card and reboot rpi3.
it will cycle through four colors on display:

https://github.com/user-attachments/assets/194a12e3-30f1-481e-9378-114059aae0f9

### An example setup

![alt text](setup.png)

## GAMEHAT setup

Follow the Waveshare website instructions to assemble it. LEAVE THE back cover off. Plug in the speaker for sound. Insert SD card and power up.

![alt text](image-4.png)

However the UART pins are blocked. To access it for debugging: 

Connect the 40pin header extender to the Rpi3. The connect the serial cable to the extender.

![alt text](image-5.png)

Put Rpi3 back on

![alt text](image-6.png)

Connect the display to the Rpi3 via a HDMI cable (the hard HDMI connector that comes with the gamehat is too short -- not used).

![alt text](image-7.png)







