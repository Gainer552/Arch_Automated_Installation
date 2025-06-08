# Arch Automated Installation

**Description**

This is a streamlined and modern approach to installing Arch Linux using a pre-configured JSON file compatible with the official archinstall script. Designed for speed, portability, and simplicity, this method automates the essential steps of installation, including disk partitioning, system setup, and desktop environment configuration—making Arch accessible without sacrificing its power or philosophy.

This installation method assumes /dev/sda as the target drive. Users with other disks (e.g., /dev/nvme0n1) must modify that field in the JSON file accordingly. The configuration installs a GNOME desktop, sets up Wi-Fi, enables networking, and uses GRUB for boot management.

**Table of Contents**

1. Requirements
2. Setup Instructions
3. Usage
4. Features
5. Legal Disclaimer

**Requirements**

1. A USB drive with the official Arch Linux ISO
2. A second USB drive containing:

• archinstall_config.json

**Setup Instructions**

1. Prepare Installation Media

• Flash the Arch Linux ISO onto one USB drive.

• Place the JSON file archinstall_config.json on another USB drive.

2. Boot into the Arch ISO

• Plug in the USB with the Arch ISO and boot from it.

3. Mount the USB Containing the JSON Files

• mkdir /mnt/install_usb

• mount /dev/[DEVICENAME] /mnt/install_usb  # Replace [DEVICENAME] with the correct USB identifier

4. Start Installation

From the mounted directory:

• archinstall --config /mnt/install_usb/archinstall_config.json

• Let the installer run. This process may take several minutes.

**Usage Flow**

1. Wi-Fi Setup (optional): The configuration supports Wi-Fi. If needed, manually connect using iwctl before running the installer.
2. Automated Installation: The script will install:

• EFI partition /boot (FAT32, 512MiB)

• Root partition / (EXT4, remaining space)

• GNOME desktop

• Pipewire audio

• Networking via NetworkManager

• Configured locale, timezone, and keyboard

3. Finalization: When complete, shut down the system, remove both USBs, and boot into your new Arch system.

**Features**

• Preconfigured Automation: Uses official archinstall functionality to auto-provision an Arch Linux system.

• Full Desktop System: GNOME desktop with default apps and tools.

• Network Ready: DHCP setup and NetworkManager enabled.

• Silent Mode: No need to manually walk through the installer.

• Portable: Designed to be used on any system with /dev/sda by default—editable for others.

**Legal Disclaimer**

This installation method and its configuration files are provided "as is" with no warranties, express or implied.

**No Liability**

The developer assumes no responsibility for:

• Data loss

• System misconfiguration

• Hardware failure

• Installation errors or corruption

• Any direct or indirect damages resulting from use

**Data Responsibility**

You are fully responsible for backing up data. This process will wipe and reformat the target drive.

**User Responsibility**

By using these configurations, you acknowledge:

• You understand and accept the risks of OS installation.

• You will review and modify your target partition/SSD/HDD if your system uses another disk.

• You assume full responsibility for all outcomes.

**No Support Guarantee**

• There is no promise of:

• Support or troubleshooting

• Bug fixes or updates

• Ongoing maintenance

**Legal Compliance**

You are responsible for ensuring that your use of this method complies with the laws and regulations in your jurisdiction.

By using these files, you accept the terms above. If you do not agree, do not proceed with the installation.

**Disclaimer:** This project is not affiliated with or endorsed by Arch Linux or the Arch Linux Project. “Arch Linux” is a registered trademark of Judd Vinet and the Arch Linux Project. This is an unofficial user-maintained toolkit built for the Arch community.
