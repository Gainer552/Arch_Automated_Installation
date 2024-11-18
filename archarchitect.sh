#!/bin/bash

cat << "EOF"
      _                      __             _                      __        _   _                 _    
     / \                    [  |           / \                    [  |      (_) / |_              / |_  
    / _ \     _ .--.  .---.  | |--.       / _ \     _ .--.  .---.  | |--.   __ `| |-'.---.  .---.`| |-' 
   / ___ \   [ `/'`\]/ /'`\] | .-. |     / ___ \   [ `/'`\]/ /'`\] | .-. | [  | | | / /__\\/ /'`\]| |   
 _/ /   \ \_  | |    | \__.  | | | |   _/ /   \ \_  | |    | \__.  | | | |  | | | |,| \__.,| \__. | |,  
|____| |____|[___]   '.___.'[___]|__] |____| |____|[___]   '.___.'[___]|__][___]\__/ '.__.''.___.'\__/  
EOF
echo
#sleep 15s

# Description
echo "ArchArchitect is a cutting-edge, portable solution designed to redefine the Arch Linux installation experience. 
With seamless integration into the powerful archinstall script, ArchArchitect automates and optimizes every step of the installation process"
echo
#sleep 15s

# Lists connected devices.
echo "A list of connected storage devices will appear in 5 seconds, please review them and choose which device Arch will be installed on."
echo
#sleep 5s
lsblk
echo

# Establish Internet Connection
WiFi () {
	echo "Would you like to connect to the internet with WiFi? (y/n): " wifi
if [[ "$wifi" == "y" || "$wifi" == "Y" ]]; then
	iwctl
	sleep 5s
	device list
	echo
	read -p "Enter the name of your WiFi device: " interface
	echo
	station $interface scan
	echo
	station $interface get-networks
	echo
	read -p "Enter the name of your network: " ssid
	echo
	read -sp "Enter the password for your network: " pass
	echo
	iwctl --passphrase=$pass station $interface connect $ssid
	sleep 10s
	echo
	echo "Testing internet connection..."
	ping -c 10 www.google.com
	echo
	echo "If you see any received packets, then a connection has been made."
	echo
	read -p "Are you connected to the internet? (y/n): " connected
	if [[ "$connected" == "y" || "$connected" == "Y" ]]; then
		return
	else
		WiFi
	fi
fi
}

# Confirm internet is connection established.
echo "You're connected to the internet, exiting iwctl, and moving on..."
exit
echo

# Initialize Arch install script.
echo "WARNING: Please wait for Arch to finish installing. This WILL TAKE A WHILE! 
Once finished, simply turn off your computer, remove the USB drive with Arch Architect, and turn your computer on to use Arch!"
sleep 15s
echo
echo "Beginning Arch installation process..."
sleep 15s
config_path=$(lsblk -o MOUNTPOINT | grep -i usb)/Arch_Architect/archinstall_config.json
[[ -f "$config_path" ]] && archinstall --config "$config_path"
