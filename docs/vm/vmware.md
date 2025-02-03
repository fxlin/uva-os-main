# Running a Provided VM Image on Windows or macOS

## Table of Contents

- [Running a Provided VM Image on Windows or macOS](#running-a-provided-vm-image-on-windows-or-macos)
   - [Installation](#installation)
      - [For Windows Users](#for-windows-users)
      - [For macOS Users](#for-macos-users)
   - [Developing on VM, for the Rpi3 hardware](#developing-on-vm-for-the-rpi3-hardware)
      - [Pass through the SD card reader](#pass-through-the-sd-card-reader)
      - [Pass through the USB-serial adapter](#pass-through-the-usb-serial-adapter)
      - [Configure minicom via its config file (already done for VM users)](#configure-minicom-via-its-config-file-already-done-for-vm-users)
      - [Launch minicom](#launch-minicom)
   - [Appendix -- minicom configuration via GUI](#appendix----minicom-configuration-via-gui)
      - [Minicom serial port settings](#minicom-serial-port-settings)
      - [Minicom terminal settings](#minicom-terminal-settings)

## Installation 

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
   - To enable copy/paste across the VM and the host, do 
```
sudo apt install open-vm-tools-desktop
```
   - also cf: https://chatgpt.com/share/6795614b-5de8-8004-959c-6b02a22b15f2


8. **Shut Down the VM:**
   - Choose **Shut Down** from VMware Fusion’s **Virtual Machine** menu or shut down the OS inside the VM.


## Setting up VM for development for rpi3 hardware

see [../rpi3/README.md](../rpi3/rpi3-setup.md)

