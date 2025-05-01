#!/bin/bash

# Setup Script

# Uninstall Bloatware Apps
sudo apt --purge remove -y yelp*
sudo apt --purge remove -y gnome-logs
sudo apt --purge remove -y seahorse
sudo apt --purge remove -y gnome-contacts
sudo apt --purge remove -y geary
sudo apt --purge remove -y libreoffice*
sudo apt --purge remove -y gnome-weather
sudo apt --purge remove -y ibus-mozc
sudo apt --purge remove -y mozc-utils-gui
sudo apt --purge remove -y gucharmap
sudo apt --purge remove -y simple-scan
sudo apt --purge remove -y popsicle
sudo apt --purge remove -y popsicle-gtk
sudo apt --purge remove -y totem*
sudo apt --purge remove -y lm-sensors*
sudo apt --purge remove -y xfburn
sudo apt --purge remove -y xsane*
sudo apt --purge remove -y hv3
sudo apt --purge remove -y exfalso
sudo apt --purge remove -y parole
sudo apt --purge remove -y quodlibet
sudo apt --purge remove -y xterm
sudo apt --purge remove -y redshift*
sudo apt --purge remove -y drawing
sudo apt --purge remove -y hexchat*
sudo apt --purge remove -y thunderbird*
sudo apt --purge remove -y transmission*
sudo apt --purge remove -y transmission-gtk*
sudo apt --purge remove -y transmission-common*
sudo apt --purge remove -y webapp-manager
sudo apt --purge remove -y celluloid
sudo apt --purge remove -y hypnotix
sudo apt --purge remove -y rhythmbox*
sudo apt --purge remove -y librhythmbox-core10*
sudo apt --purge remove -y rhythmbox-data
sudo apt --purge remove -y mintbackup
sudo apt --purge remove -y mintreport
sudo apt --purge remove -y aisleriot
sudo apt --purge remove -y gnome-mahjongg
sudo apt --purge remove -y gnome-mines
sudo apt --purge remove -y quadrapassel
sudo apt --purge remove -y gnome-sudoku
sudo apt --purge remove -y cheese*
sudo apt --purge remove -y pitivi
sudo apt --purge remove -y gnome-sound-recorder
sudo apt --purge remove -y remmina*
sudo apt --purge remove -y gimp*
sudo apt --purge remove -y zorin-windows-app-support-installation-shortcut
sudo apt --purge remove -y firefox-esr
sudo apt --purge remove -y gnome-todo
sudo apt --purge remove -y brasero-common
sudo apt --purge remove -y brasero
sudo apt --purge remove -y brasero-cdrkit
sudo apt --purge remove -y libbrasero-media3-1
sudo apt --purge remove -y nautilus-extension-brasero
sudo apt --purge remove -y evolution-common
sudo apt --purge remove -y evolution
sudo apt --purge remove -y evolution-plugin-bogofilter
sudo apt --purge remove -y evolution-plugin-pstimport
sudo apt --purge remove -y evolution-plugins
sudo apt --purge remove -y libevolution
sudo apt --purge remove -y evolution-ews
sudo apt --purge remove -y evolution-data-server
sudo apt --purge remove -y libfolks-eds26
sudo apt --purge remove -y evolution-data-server-common
sudo apt --purge remove -y libcamel-1.2-63
sudo apt --purge remove -y gir1.2-folks-0.7
sudo apt --purge remove -y gir1.2-camel-1.2
sudo apt --purge remove -y gir1.2-ebookcontacts-1.2
sudo apt --purge remove -y gir1.2-edataserver-1.2
sudo apt --purge remove -y libebackend-1.2-10
sudo apt --purge remove -y libebook-1.2-20
sudo apt --purge remove -y libebook-contacts-1.2-3
sudo apt --purge remove -y libecal-2.0-1
sudo apt --purge remove -y libedata-book-1.2-26
sudo apt --purge remove -y libedata-cal-2.0-1
sudo apt --purge remove -y libedataserver-1.2-26
sudo apt --purge remove -y libedataserverui-1.2-3
sudo apt --purge remove -y gnome-photos

# System Update and Upgrade
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y

# System Backup
## sudo apt-add-repository ppa:teejee2008/ppa -y
## sudo apt update
## sudo apt install -y timeshift

# System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# Flatpak Support
## sudo apt install -y flatpak
## sudo apt install -y gnome-software-plugin-flatpak
## flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# End of Script

# Display Installation Complete Message
echo "All good now :)" 
echo "Please, restart the computer, backup your system using Timeshift (if you installed it and want to) and then run the 2nd Script to install all your Apps."
