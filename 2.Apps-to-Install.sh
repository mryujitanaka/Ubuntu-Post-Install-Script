!#/bin/bash

## Apps to Install ##

# System Update
sudo apt update &&

# Ubuntu Software App Store (.deb)
sudo apt install -yy gnome-tweaks gparted synaptic gufw hardinfo dconf-editor baobab autokey-gtk virtualbox neofetch htop net-tools ffmpeg &&

# PPA's Apps from Launchpad
## Adding Papirus Icons
sudo add-apt-repository ppa:papirus/papirus -yy
## Adding Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -yy
## Adding qBittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -yy
## Adding Git
sudo add-apt-repository ppa:git-core/ppa -yy
## Adding Cryptomator
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -yy
## Adding KeePassXC
sudo add-apt-repository ppa:phoerious/keepassxc -yy
## Adding OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio -yy
### System Update
sudo apt update -qq &&
#### Installing the Programs
sudo apt install -yy papirus-icon-theme grub-customizer qbittorrent git cryptomator keepassxc obs-studio &&

# PPA's Apps from Other Sources
## Adding Amazon Corretto 11
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - sudo add-apt-repository 'deb https://apt.corretto.aws stable main' -yy
## Adding GitHub Desktop - The Linux Fork
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null -yy
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list' -yy
## Adding Brave Browser
sudo apt install apt-transport-https curl gnupg -yy
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - -yy
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list -yy
### System Update
sudo apt update -qq &&
#### Installing the Programs
sudo apt install -yy java-common java-11-amazon-corretto-jdk github-desktop brave-browser &&

# Snap Apps
## IntelliJ IDEA
sudo snap install intellij-idea-community --classic

# Flatpak Update
flatpak update -y

# Flatpak Apps
## VLC
flatpak install flathub org.videolan.VLC -yy &&
## AnyDesk
flatpak install flathub com.anydesk.Anydesk -yy &&
## Tor Browser
flatpak install flathub com.github.micahflee.torbrowser-launcher -yy &&
## GIMP
flatpak install flathub org.gimp.GIMP -yy &&
## LibreOffice
flatpak install flathub org.libreoffice.LibreOffice -yy &&
## Meld
flatpak install flathub org.gnome.meld -yy &&
## Audacity
flatpak install flathub org.audacityteam.Audacity -yy &&
## Visual Studio Code
flatpak install flathub com.visualstudio.code -yy &&

# Flatpak Clean Up
flatpak uninstall --delete-data -yy &&
flatpak uninstall --unused -yy &&

# Some Other Settings
## Permanently enable Do Not Disturb (No Notifications)
gsettings set org.gnome.desktop.notifications show-banners false &&
## Enable Hidden Startup Programs
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop &&

# Finishing Things Up
## System Update and Upgrade
sudo apt update && 
sudo apt upgrade -yy &&
sudo apt dist-upgrade -yy &&
## System Clean Up
sudo apt install -f &&
sudo apt autoremove -yy &&
sudo apt autoclean &&
sudo apt clean

# End of Script

# Display Installation Complete Message
echo "All done :) Please, restart the computer, clean up your system using BleachBit and then restart the computer again."