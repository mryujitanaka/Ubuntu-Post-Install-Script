!#/bin/bash

## Apps to Install ##

# System Update 
sudo apt update &&

# Ubuntu Software App Store
sudo apt install -yy gnome-tweaks gparted synaptic gufw hardinfo dconf-editor &&

# Other Apps
sudo apt install -yy autokey-gtk virtualbox neofetch htop net-tools &&

# PPA's Apps from Launchpad
## Timeshift
sudo apt-add-repository ppa:teejee2008/ppa -y &&
## Adding Papirus Icons
sudo add-apt-repository ppa:papirus/papirus -y &&
## Adding Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y &&
## Adding qBittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y &&
## Adding Git
sudo add-apt-repository ppa:git-core/ppa -y &&
## Adding Cryptomator
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -y &&
## Adding KeePassXC
sudo add-apt-repository ppa:phoerious/keepassxc -y &&
### System Update
sudo apt update -qq &&
#### Installing the Programs
sudo apt install -yy timeshift papirus-icon-theme grub-customizer qbittorrent git cryptomator keepassxc &&

# PPA's Apps from Other Sources
## Adding Amazon Corretto 11
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - sudo add-apt-repository 'deb https://apt.corretto.aws stable main' -yy &&
## Adding GitHub Desktop - The Linux Fork
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null -yy &&
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list' -yy &&
#### Installing the Programs
sudo apt update &&
sudo apt install -yy java-common &&
sudo apt install -yy java-11-amazon-corretto-jdk &&
sudo apt install -yy github-desktop &&

# Snap Apps
## IntelliJ IDEA
sudo snap install intellij-idea-community --classic -yy &&

# Flatpak Update
flatpak update -yy &&

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
sudo apt update &&
sudo apt upgrade -yy &&
sudo apt dist-upgrade -yy &&
sudo apt install -f -yy && 
sudo apt autoremove -yy &&
sudo apt autoclean -yy && 
sudo apt clean &&

# End of Script

# Display Installation Complete Message
echo "All done! Please, restart the computer."
