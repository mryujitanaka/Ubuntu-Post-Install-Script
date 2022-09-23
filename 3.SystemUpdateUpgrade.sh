#!/bin/bash

# System Update and Upgrade Script

# System Update and Upgrade
sudo apt update
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y

# Flatpak Update
flatpak update -y

# Flatpak Clean Up
flatpak uninstall --delete-data -y
flatpak uninstall --unused -y

# Nix Package Manager Update
nix-env -u

# System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# End of Script
echo "All good now :)"
echo "Please, restart the computer."