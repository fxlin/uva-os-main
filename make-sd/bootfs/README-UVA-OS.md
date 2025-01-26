
## the "test" kernels:

1. `kernel8-rpi3.img`

it prints a message over UART

"if you see this message, the rpi3 setup is correct"

2. `kernel8-rpi3-display.img`
(to use it, rename this file to kernel8-rpi3.img and reboot rpi3)

it will cycle through four colors on display:

https://github.com/user-attachments/assets/194a12e3-30f1-481e-9378-114059aae0f9

## other files (per Circle boot/README)
	
	bootcode.bin		boot loader (not used on Raspberry Pi 4)
	start.elf		firmware executable for  Raspberry Pi 1-3
	start4.elf		firmware executable for  Raspberry Pi 4
	fixup.dat		relocation information for start.elf
	fixup4.dat		relocation information for start4.elf
	bcm2711-rpi-4-b.dtb	device tree binary needed for Raspberry Pi 4
	bcm2711-rpi-cm4.dtb	device tree binary needed for Compute Module 4
	LICENCE.broadcom	firmware license
	COPYING.linux		license for the device tree binaries
	start_cd.elf		cut-down firmware for Raspberry Pi 1-3 (option)
	start4cd.elf		cut-down firmware for Raspberry Pi 4 (option)
	fixup_cd.dat		relocation information for start_cd.elf (option)
	fixup4cd.dat		relocation information for start4cd.elf (option)

The cut-down version of the firmware is used, when the option "gpu_mem=16" is
specified in config.txt. It does not support codecs and 3D, but is smaller and
loads quicker. Without this option specified, the last four files are not
needed.

In any case you have to copy these files onto the first FAT partition on a SD
card along with the kernel*.img file of your Circle application.

For 32-bit operation (AArch32) on the Raspberry Pi 1-3 and Zero that's all. You
can put the SD card into you Raspberry Pi computer and power it on.
