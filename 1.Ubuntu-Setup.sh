!#/bin/bash

## Ubuntu Setup ##

# System Update and Upgrade 
sudo apt update && 
sudo apt upgrade -y &&
sudo apt dist-upgrade -y &&
sudo apt install -f &&
sudo apt autoremove -y &&
sudo apt autoclean &&
sudo apt clean &&

# Flatpak Support
sudo apt install -y flatpak &&
sudo apt install -y gnome-software-plugin-flatpak &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# End of Script

# Display Installation Complete Message
echo "All good now! Please, restart the computer and then run the 2nd Script to install all your Apps."