#!/bin/bash

## Ubuntu Setup ##

# Uninstall Bloatware Apps
sudo apt --purge remove -yy yelp gnome-logs seahorse &&

# System Update and Upgrade
sudo apt update && 
sudo apt upgrade -yy &&
sudo apt dist-upgrade -yy &&

# System Backup
sudo apt-add-repository ppa:teejee2008/ppa -yy
sudo apt update &&
sudo apt install -yy timeshift &&

# System Clean Up
sudo apt install -f &&
sudo apt autoremove -yy &&
sudo apt autoclean &&
sudo apt clean &&

# Flatpak Support
sudo apt install -yy flatpak &&
sudo apt install -yy gnome-software-plugin-flatpak &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# End of Script

# Display Installation Complete Message
echo "All good now :) Please, restart the computer, backup your system using Timeshift and then run the 2nd Script to install all your Apps."