
the "test" kernel:
kernel8-rpi3.img	md5sum: 074d1c0bae0a3572bc302d8f3d017a97 

which will print a message over UART
"if you see this message, the rpi3 setup is correct"

(other files, based on Circle boot/README)
	
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
