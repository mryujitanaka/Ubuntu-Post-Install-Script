#!/bin/bash

# System Update and Upgrade Script

# System Update and Upgrade
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
## sudo npm install -g npm@latest

# Flatpak Update
flatpak update -y

# Flatpak Clean Up
flatpak uninstall --delete-data -y
flatpak uninstall --unused -y

# Snap Update
sudo snap refresh

# Snap Clean Up
sudo rm -rf /var/lib/snapd/cache/*

# System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# End of Script
echo "All good now :)"
echo "Please, restart the computer."