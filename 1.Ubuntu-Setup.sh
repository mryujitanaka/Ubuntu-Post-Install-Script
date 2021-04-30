#!/bin/bash

## Ubuntu Setup ##

# Uninstall Bloatware Apps
sudo apt --purge remove -y yelp* gnome-logs seahorse gnome-contacts geary libreoffice* gnome-weather ibus-mozc mozc-utils-gui gucharmap simple-scan popsicle popsicle-gtk totem*

# System Update and Upgrade
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y

# Activate the lines below by removing the comments (###) if you want Timeshift to be installed.
## System Backup
### sudo apt-add-repository ppa:teejee2008/ppa -y
### sudo apt update
### sudo apt install -y timeshift

# System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# Activate the lines below by removing the comments (###) if you want Flatpak to be installed on your PC. Check beforehand if your Operating System already supports program installations via flatpak.
## Flatpak Support
### sudo apt install -y flatpak
### sudo apt install -y gnome-software-plugin-flatpak
### flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# End of Script

# Display Installation Complete Message
echo "All good now :) Please, restart the computer, backup your system using Timeshift (if you installed it) and then run the 2nd Script to install all your Apps."