## Running a Provided VM Image on Windows or macOS

### For **Windows** Users:

1. **Download VMware Workstation:**
    - Download from box (UVA login required): https://virginia.box.com/s/drrnvm7o7h6e7lvhh6jaq1ogwqrk3nx1
    - Alternatively, download the latest version from the [VMware Workstation website](https://www.vmware.com/products/workstation-pro.html).   
        - Windows: VMWare workstation Player 17
        - Linux: VMware fusion 13.6.2

2. **Install VMware Workstation:**
   - Run the installer and follow the on-screen instructions, accepting the license agreement.
   - Choose the installation path and complete the installation.
   - Restart the computer if prompted.

3. **Open VMware Workstation:**
   - Launch VMware Workstation from the Start Menu or desktop shortcut.

4. **Load the VM Image:**
   - **Copy the VM Image**: Ensure access to the VM image file you’ve provided (usually with extensions like `.vmx` for Workstation or `.ova` if you exported it).
   - **Open the Image in VMware Workstation**:
     - Go to **File > Open** in VMware Workstation and locate the VM image.
     - Select it and click **Open** to load the VM.

5. **Configure VM Settings (if needed):**
   - Right-click the VM in VMware Workstation and select **Settings** to adjust memory, CPU, or network configurations if necessary.

6. **Run the VM:**
   - Click **Power on this virtual machine** to start using the VM.

7. **Shut Down the VM:**
   - Either use **Shut Down Guest** from VMware’s **Power** menu or shut down the operating system inside the VM.

---

### For **macOS** Users:

1. **Download VMware Fusion:**
   - Download from box (UVA login required): https://virginia.box.com/s/drrnvm7o7h6e7lvhh6jaq1ogwqrk3nx1
   - Alternatively, go to the [VMware Fusion website](https://www.vmware.com/products/fusion.html).
      - Download the macOS version (VMware Fusion Player is free for personal use, while Pro requires a license).

3. **Install VMware Fusion:**
   - Open the downloaded `.dmg` file and drag the VMware Fusion icon to the Applications folder.
   - Launch VMware Fusion and follow any setup instructions, such as allowing permissions in **System Preferences > Security & Privacy**.

4. **Open VMware Fusion:**
   - Start VMware Fusion from the Applications folder.

5. **Load the VM Image:**
   - **Copy the VM Image**: Ensure you have access to the VM image file provided by you (typically `.ova` for cross-compatibility or `.vmx` if directly used on Fusion).
   - **Open or Import the Image**:
     - If it’s an `.ova` file, go to **File > Import** and select the file to import it.
     - If it’s a `.vmx` file, go to **File > Open** and select the file to open it directly.

6. **Configure VM Settings (if needed):**
   - Click on **Virtual Machine > Settings** to adjust memory, CPU, or other settings.

7. **Run the VM:**
   - Click **Play** or **Start Up** to power on the VM.
   - To enable copy/paste across the VM and the host, do `sudo apt install open-vm-tools-desktop`
   - also cf: https://chatgpt.com/share/6795614b-5de8-8004-959c-6b02a22b15f2


8. **Shut Down the VM:**
   - Choose **Shut Down** from VMware Fusion’s **Virtual Machine** menu or shut down the OS inside the VM.

---

## Developing on VM, for the Rpi3 hardware

### Pass through the SD card reader

From the top-right corner of VMWare player:

![alt text](<sd card reader.jpg>)

NB: for some laptops, the built-in SD card readers cannot be passed through to VM. Use the USB card reader instead. 

### Pass through the USB-serial adapter

In the same way: 

![alt text](<vmplayer usb icon.jpg>)

And confirm it: 

![alt text](<vm usb choice.jpg>)

After that, do `sudo dmesg` from the VM. Reference output below: 

![alt text](<usb serial dmsg.jpg>)


### Configure minicom via its config file (already done for VM users)

create the configure file, if it does not exist
```
sudo gedit /etc/minicom/minirc.dfl
```

And enter the following contents
```
pu port             /dev/ttyUSB0
pu baudrate        115200
pu bits            8
pu parity          N
pu stopbits        1
pu rtscts          No
pu displayhex    Yes
pu addcarreturn  Yes
```
Save and exit

### Launch minicom:

```
sudo minicom -b 115200 -o -D /dev/ttyUSB0 -C /tmp/minicom.log
```

Warning: your OS may give different names to the USB-serial dongle, e.g. /dev/ttyUSB1. Find it out by looking at `dmesg` output. 

![alt text](<minicom cmdline.jpg>)

### Appendix -- minicom configuration via GUI

### Minicom serial port settings

Press Ctrl-A then O to enter "configuration" 

![alt text](<minicom settings.jpg>)

### Minicom terminal settings

(Note: T - Add carriage return : Yes) 

![alt text](<minicom cr line.jpg>)
