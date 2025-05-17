# Arch Automated Installation

**Description**

Arch Architect is a cutting-edge, portable Bash script designed to streamline and automate the installation of a desktop Arch Linux system. With its pre-configured options and seamless integration into the powerful archinstall script, Arch Architect simplifies the process for beginners and experienced users alike.

Arch Architect is specifically tailored for installing a desktop Arch Linux environment. By leveraging predefined configurations stored in a JSON file, the program reduces the complexity of setting up Arch Linux, automating the most common steps while allowing for minimal user interaction.

**Table of Contents**

- Requirements
- Installation
- Usage
- Features

**Requirements**

- A USB drive containing the Arch Linux ISO.
- A second USB drive with the Arch_Architect folder, containing the archarchitect.sh script and the archinstall_config.json file.
- A live Arch Linux environment booted from the Arch Linux ISO.
- Basic knowledge of mounting USB devices and navigating the command line in the Arch Linux live environment.

**Installation**

Prepare the USB Drives:

1. Download the Arch Linux ISO and create a bootable USB drive.
2. Copy the Arch_Architect folder (containing archarchitect.sh and archinstall_config.json) to a second USB drive.
3. Boot into the Arch ISO: Insert the USB with the Arch Linux ISO into your computer and boot from it.
5. Mount the Arch Architect USB: Insert the second USB containing the Arch_Architect folder into your computer.
6. Mount the USB manually from the live Arch Linux environment: mkdir /mnt/archarchitect
mount /dev/[your-usb-device] /mnt/archarchitect
7. Navigate to the Arch_Architect Folder: cd /mnt/archarchitect/Arch_Architect
8. Run the Script: ./archarchitect.sh

**Usage**

1. WiFi Setup (Optional): Arch Architect will guide you through connecting to the internet using iwctl. Follow the prompts to select your WiFi network and enter your credentials.
2. Confirm Arch Install USB: Review the connected devices list displayed by the script.
3. Confirm the USB containing the Arch Linux ISO is mounted.
4. Launch the Installation Process: The script will automatically locate the archinstall_config.json file and use it to begin the Arch installation process. Simply wait for the installation to complete. This process will take some time.
5. Finalize Installation: Once the installation is complete, power off your computer.
6. Remove both USB drives and boot into your new Arch Linux desktop system.

**Features**

- Pre-Configured Arch Installation: Automatically sets up a desktop Arch Linux environment using a JSON configuration file.
- WiFi Configuration: Automates the process of connecting to WiFi using iwctl.
- Streamlined Workflow: Guides users through essential setup steps, eliminating the complexity of manual configuration.
- Portability: Designed to run directly from a USB drive in a live Arch Linux environment.

**Legal Disclaimer**

Arch Architect is provided "as is" without any guarantees or warranties, express or implied. By using this program, you agree to the following terms:

**No Liability**

The developer of Arch Architect shall not be held liable for any damages, data loss, system failures, or other unintended consequences resulting from the use, misuse, or inability to use this software. This includes, but is not limited to, incidental, special, indirect, or consequential damages.

**No Responsibility for Data Loss**

The installation process involves modifying partitions and system configurations, which may result in data loss or corruption. It is the user's sole responsibility to back up all critical data before using Arch Architect. The developer assumes no responsibility for any loss or damage to data.

**User Responsibility**

By using Arch Architect, you acknowledge that:

- You understand the risks associated with partitioning and installing an operating system.
- You have reviewed and understood all steps required to use the program safely and effectively.
- You accept full responsibility for any consequences arising from the use of this software.
- No Support Guarantee

The developer is under no obligation to provide:

- Technical support or assistance.
- Updates, bug fixes, or feature enhancements.

**Compliance with Local Laws**

It is the user's responsibility to ensure that their use of Arch Architect complies with all applicable laws and regulations in their jurisdiction. The developer assumes no liability for legal repercussions arising from the use of this software.

By downloading, installing, or using Arch Architect, you agree to the terms of this disclaimer. If you do not agree to these terms, do not use this program.
