#!/bin/bash

# Fix WiFi for Intel AX201 on Pop!_OS
echo "Starting WiFi fix for Intel AX201..."
echo "Updating system and reinstalling firmware..."
apt update
apt install --reinstall linux-firmware -y
update-initramfs -u

echo "Ensure the following in your BIOS settings:"
echo "- Secure Boot is DISABLED"
echo "- Fast Boot is DISABLED"
echo "- WiFi or wireless network devices are ENABLED"
read -p "Press Enter to if this is the case, otherwise CTRL-C and return to this"

echo "Installing the mainline kernel tool..."
apt install mainline -y
echo "Open 'mainline' and ensure you're on the latest kernel if issues persist."
echo "You can install and reboot to test the latest kernel using the mainline tool."
echo -p "Press enter to Reboot to apply changes, otherwise CTRL-C"
reboot
