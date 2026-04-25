#!/bin/bash

# Apps to Install Script

# System Update
sudo apt update

# Apps
sudo apt install -y synaptic
sudo apt install -y adb
sudo apt install -y inetutils-traceroute
sudo apt install -y curl
## sudo apt install -y ttf-mscorefonts-installer

## Cryptomator dependecies
sudo apt install -y fuse3

## VirtualBox dependecies
## In order for these packages to be installed, make sure that in the "Software & Updates" settings the "Download from" option is selected as "Main server". After that, make sure that you have enabled the Universe Repository; if not, you can do so by selecting the "Community-maintained free and open-source software (universe)" option. Finally, press the "Close" button.
### sudo apt install -y libqt5help5 libqt5opengl5 libxcb-cursor0

## GNOME DE packages
### sudo apt install -y gnome-tweaks
### sudo apt install -y dconf-editor

# PPA's Apps from Launchpad
## Fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
## Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
## Papirus Icons
sudo add-apt-repository ppa:papirus/papirus -y
## Git
sudo add-apt-repository ppa:git-core/ppa -y
## Cryptomator
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -y
## KeePassXC
sudo add-apt-repository ppa:phoerious/keepassxc -y

### System Update
sudo apt update -qq
#### Installing the Programs
sudo apt install -y fastfetch
sudo apt install -y grub-customizer
sudo apt install -y papirus-icon-theme
sudo apt install -y qbittorrent
sudo apt install -y git
sudo apt install -y cryptomator
sudo apt install -y keepassxc

# Flatpak Update
flatpak update -y

# Flatpak Apps
## baobab (Disk Usage Analyzer)
flatpak install flathub org.gnome.baobab -y
## qBittorrent
flatpak install flathub org.qbittorrent.qBittorrent -y
## Tor Browser
flatpak install flathub org.torproject.torbrowser-launcher -y
## GIMP
flatpak install flathub org.gimp.GIMP -y
## OBS Studio
flatpak install flathub com.obsproject.Studio -y
## Discord
### flatpak install flathub com.discordapp.Discord -y
## Audacity
### flatpak install flathub org.audacityteam.Audacity -y
## FileZilla
### flatpak install flathub org.filezillaproject.Filezilla -y
## Zoom
### flatpak install flathub us.zoom.Zoom -y
## Microsoft Skype
### flatpak install flathub com.skype.Client -y
## Microsoft Teams
### flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y
## Slack
### flatpak install flathub com.slack.Slack -y
## Chromium
### flatpak install flathub org.chromium.Chromium -y

# Flatpak Clean Up
flatpak uninstall --delete-data -y
flatpak uninstall --unused -y

# Snap Update
sudo snap refresh

# Snap Apps
## htop
sudo snap install htop
## net-tools
sudo snap install net-tools-snap --edge
## Flameshot
sudo snap install flameshot
## IntelliJ IDEA Community
sudo snap install intellij-idea-community --classic
## VLC
sudo snap install vlc

# Snap Clean Up
sudo rm -rf /var/lib/snapd/cache/*

# wget Apps
## hardinfo2
wget -c "https://github.com/hardinfo2/hardinfo2/releases/download/release-2.2.15pre/hardinfo2_2.2.15-Ubuntu-22.04_aarch64.deb"
## BleachBit
wget -c "https://download.bleachbit.org/bleachbit_5.0.2-0_all_ubuntu2204.deb"
## bottom
wget -c "https://github.com/ClementTsang/bottom/releases/download/0.12.3/bottom_0.12.3-1_amd64.deb"
## GitHubDesktop
wget -c "https://github.com/shiftkey/desktop/releases/download/release-3.4.9-linux1/GitHubDesktop-linux-amd64-3.4.9-linux1.deb"
## GoogleChrome
wget -c "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
## VSCode
wget -c "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
## VirtualBox
wget -c "https://download.virtualbox.org/virtualbox/7.2.8/virtualbox-7.2_7.2.8-173730~Ubuntu~jammy_amd64.deb"
## VirtualBox Extension Pack
wget -c "https://download.virtualbox.org/virtualbox/7.2.8/Oracle_VirtualBox_Extension_Pack-7.2.8.vbox-extpack"
## ClamAV
wget -c "https://www.clamav.net/downloads/production/clamav-1.5.2.linux.x86_64.deb"
## GParted
wget -c "https://sourceforge.net/projects/gparted/files/gparted/gparted-1.8.1/gparted-1.8.1.tar.gz/download"
## gufw
wget -c "https://github.com/costales/gufw/releases/download/26.04/gui-ufw-26.04.0.tar.gz"
## scrcpy
wget -c "https://github.com/Genymobile/scrcpy/releases/download/v3.3.4/scrcpy-linux-x86_64-v3.3.4.tar.gz"
## tldr
wget -c "https://github.com/psibi/tldr-hs/releases/download/v0.9.2/tldr-musl-linux-v0.9.2.tar.gz"
## LibreOffice
wget -c "https://download.documentfoundation.org/libreoffice/stable/26.2.2/deb/x86_64/LibreOffice_26.2.2_Linux_x86-64_deb.tar.gz"
## 0xProto font from NerdFonts
wget -c "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/0xProto.zip"

### Installing the wget Programs
sudo apt install -y ./hardinfo2_2.2.15-Ubuntu-22.04_amd64.deb
sudo apt install -y ./bleachbit_5.0.2-0_all_ubuntu2204.deb
sudo apt install -y ./bottom_0.12.3-1_amd64.deb
sudo apt install -y ./GitHubDesktop-linux-amd64-3.4.9-linux1.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo apt install -y ./code_1.116.0-1776214182_amd64.deb
sudo apt install -y ./virtualbox-7.2_7.2.8-173730~Ubuntu~jammy_amd64.deb
sudo apt install -y ./clamav-1.5.2.linux.x86_64.deb
sudo unzip 0xProto.zip -d /usr/share/fonts/
sudo fc-cache -f -v

# Apps from Other Sources
## Node.js (v24.15.0 LTS)
### curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
### \. "$HOME/.nvm/nvm.sh"
### nvm install 24
## Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
## AnyDesk
sudo apt install -y ca-certificates
sudo apt install -y apt-transport-https
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY -o /etc/apt/keyrings/keys.anydesk.com.asc
sudo chmod a+r /etc/apt/keyrings/keys.anydesk.com.asc
echo "deb [signed-by=/etc/apt/keyrings/keys.anydesk.com.asc] https://deb.anydesk.com all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null
## SDKMAN!
curl -s https://get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 25.0.2.1-sem
### System Update
sudo apt update -qq
### Apps from Other Sources installation
sudo apt install -y brave-browser
sudo apt install -y anydesk

# Finishing Things Up
## System Update and Upgrade
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
## System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# End of Script

# Display Installation Complete Message
echo "All done :)" 
echo "Restart your computer, clean up your system using BleachBit (if you want to) and then restart the computer again."