#!/bin/bash

# Apps to Install Script

# System Update
sudo apt update

# Apps
sudo apt install -y gparted
sudo apt install -y synaptic
sudo apt install -y gufw
sudo apt install -y hardinfo
sudo apt install -y baobab
sudo apt install -y htop
sudo apt install -y net-tools
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y flameshot
sudo apt install -y adb
sudo apt install -y scrcpy
sudo apt install -y vlc
sudo apt install -y numlockx
sudo apt install -y inetutils-traceroute
sudo apt install -y tldr
## If you are going to install Cryptomator, you might need to install this package:
sudo apt install -y fuse3
## If you are going to install VirtualBox, you might need to install this packages. But, in order for these packages to be installed on your PC, make sure that in the "Software & Updates" settings the "Download from" option is selected as "Main server". After that, make sure that you have enabled the Universe Repository; if not, you can do so by selecting the "Community-maintained free and open-source software (universe)" option. Finally, press the "Close" button.
sudo apt install -y libqt5help5 libqt5opengl5 libxcb-cursor0

## If your DE (Desktop Environment) is not GNOME, download the package below. Otherwise, use the KDE-Connect browser extension.
sudo apt install -y kdeconnect
## If you are going to install OBS Studio, download the packages below.
sudo apt install -y v4l2loopback-dkms
sudo apt install -y ffmpeg
## If you want to change the XFCE Lock Screen Wallpaper, install this package:
sudo apt install -y lightdm-gtk-greeter-settings
## To use Java based applications like LibreOffice extensions and/or develop java apps, install the JRE or JDK packages below.
## JRE/JDK 17 from OpenJDK
### sudo apt install -y openjdk-17-jdk
### sudo apt install -y openjdk-17-jdk-headless
### sudo apt install -y openjdk-17-jre
### sudo apt install -y openjdk-17-jre-headless
### sudo apt install -y openjdk-17-jre-zero
## JRE/JDK 21 from OpenJDK
### sudo apt install -y openjdk-21-jdk
### sudo apt install -y openjdk-21-jdk-headless
### sudo apt install -y openjdk-21-jre
### sudo apt install -y openjdk-21-jre-headless
### sudo apt install -y openjdk-21-jre-zero

## If your DE is GNOME, then download the packages below.
### sudo apt install -y gnome-tweaks
### sudo apt install -y dconf-editor

# Other apps:
## sudo apt install -y clamav
## sudo apt install -y clamav-daemon
## sudo apt install -y libclamunrar9
## sudo apt install -y clamtk
## sudo apt install -y chkrootkit
## sudo apt install -y rkhunter

# PPA's Apps from Launchpad
## Fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
## Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
## Papirus Icons
sudo add-apt-repository ppa:papirus/papirus -y
## qBittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
## Git
sudo add-apt-repository ppa:git-core/ppa -y
## Cryptomator
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -y
## KeePassXC
sudo add-apt-repository ppa:phoerious/keepassxc -y
## OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio -y
## Apache
### sudo add-apt-repository ppa:ondrej/apache2 -y
## PHP
### sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
## Python 3.12.x
### sudo add-apt-repository ppa:deadsnakes/ppa -y

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
sudo apt install -y obs-studio
##### sudo apt install -y apache2
##### sudo apt install -y php8.1
##### sudo apt install -y python3.12 libpython3.12

# PPA's Apps from Other Sources
## Node.js LTS (v20.10.x) - https://github.com/nodesource/distributions#using-ubuntu-1
### curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
## Brave Browser
### sudo apt install apt-transport-https curl
### sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
### echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
## AnyDesk
### Adding the AnyDesk GPG key
#### wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
#### echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
#### sudo apt install ca-certificates curl apt-transport-https
#### sudo install -m 0755 -d /etc/apt/keyrings
#### sudo curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY -o /etc/apt/keyrings/keys.anydesk.com.asc
#### sudo chmod a+r /etc/apt/keyrings/keys.anydesk.com.asc
##### Adding the AnyDesk apt repository
###### echo "deb [signed-by=/etc/apt/keyrings/keys.anydesk.com.asc] https://deb.anydesk.com all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null
### System Update
sudo apt update -qq
### PPA's Apps from Other Sources installation
#### sudo apt install -y nodejs
#### sudo apt install -y brave-browser
#### sudo apt install -y anydesk

### If Node.js was installed, probably npm was installed along with it. So, consider updating npm to the latest version:
#### sudo npm config set fund false --location=global
#### sudo npm install -g npm@latest

# Flatpak Update
flatpak update -y

# Flatpak Apps
## Tor Browser
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
## GIMP
flatpak install flathub org.gimp.GIMP -y
## Audacity
### flatpak install flathub org.audacityteam.Audacity -y
## FileZilla
### flatpak install flathub org.filezillaproject.Filezilla -y
## Okular
### flatpak install flathub org.kde.okular -y
## Discord
### flatpak install flathub com.discordapp.Discord -y
## Zoom
### flatpak install flathub us.zoom.Zoom -y
## Microsoft Skype
### flatpak install flathub com.skype.Client -y
## Microsoft Teams
### flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y
## Todoist
### flatpak install flathub com.todoist.Todoist -y
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
## Eclipse IDE
### sudo snap install eclipse --classic

# Snap Clean Up
sudo rm -rf /var/lib/snapd/cache/*

# wget Apps
## BleachBit
wget -c "https://download.bleachbit.org/bleachbit_5.0.0-0_all_ubuntu2204.deb"
## bottom
wget -c "https://github.com/ClementTsang/bottom/releases/download/0.10.2/bottom_0.10.2-1_amd64.deb"
## GitHubDesktop
wget -c "https://github.com/shiftkey/desktop/releases/download/release-3.4.9-linux1/GitHubDesktop-linux-amd64-3.4.9-linux1.deb"
## GoogleChrome
wget -c "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
## LibreOffice
wget -c "https://tdf.c3sl.ufpr.br/libreoffice/stable/25.2.3/deb/x86_64/LibreOffice_25.2.3_Linux_x86-64_deb.tar.gz"
## LibreOffice LangPack for pt-BR
wget -c "https://mirror.uepg.br/tdf/libreoffice/stable/25.2.3/rpm/x86_64/LibreOffice_25.2.3_Linux_x86-64_rpm_helppack_pt-BR.tar.gz"
## VSCode
wget -c "https://vscode.download.prss.microsoft.com/dbazure/download/stable/17baf841131aa23349f217ca7c570c76ee87b957/code_1.99.3-1744761595_amd64.deb"
## VirtualBox
wget -c "https://download.virtualbox.org/virtualbox/7.1.8/virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb"
## VirtualBox Extension Pack
wget -c "https://download.virtualbox.org/virtualbox/7.1.8/Oracle_VirtualBox_Extension_Pack-7.1.8.vbox-extpack"
## JDK - IBM Semuru Runtime Open Edition (Java 21 LTS)
### wget -c "https://objects.githubusercontent.com/github-production-release-asset-2e65be/695265943/7545f6af-79a1-42b3-b6dc-0aa57bfe981d?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20241118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241118T144040Z&X-Amz-Expires=300&X-Amz-Signature=fccf93a0e7a049a9c5a14111930e8455857cd8283c6c896e053d11b98b27aa1f&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3B%20filename%3Dibm-semeru-open-jdk_x64_linux_21.0.4_7_openj9-0.46.1.tar.gz&response-content-type=application%2Foctet-stream"
## JRE - IBM Semuru Runtime Open Edition (Java 21 LTS)
### wget -c "https://objects.githubusercontent.com/github-production-release-asset-2e65be/695265943/404b777e-5a3e-4324-a263-c651fc92d6ba?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20241118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241118T144242Z&X-Amz-Expires=300&X-Amz-Signature=cf4150f76411673366bfa3f6474aacb52fea64fe0c6119a91a00354c2ff02a6c&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3B%20filename%3Dibm-semeru-open-jre_x64_linux_21.0.4_7_openj9-0.46.1.tar.gz&response-content-type=application%2Foctet-stream"
## GitKraken
### wget -c "https://release.gitkraken.com/linux/gitkraken-amd64.deb"
## WordPress
### wget -c "https://wordpress.org/latest.zip"
## Local by Flywheel (WordPress Local Server)
### wget -c "https://cdn.localwp.com/stable/latest/deb"
## Angry IP Scanner
### wget -c "https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan_3.9.1_amd64.deb"

### Installing the wget Programs
sudo dpkg -i bleachbit_5.0.0-0_all_ubuntu2204.deb bottom_0.10.2-1_amd64.deb GitHubDesktop-linux-amd64-3.4.9-linux1.deb google-chrome-stable_current_amd64.deb code_1.99.3-1744761595_amd64.deb virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb
#### gitkraken-amd64.deb local-8.0.0-linux.deb ipscan_3.9.1_amd64.deb

## AutoKey Installation
### wget -c "https://github.com/autokey/autokey/releases/download/v0.96.0/autokey-common_0.96.0_all.deb"
### wget -c "https://github.com/autokey/autokey/releases/download/v0.96.0/autokey-gtk_0.96.0_all.deb"
### sudo dpkg -i autokey-common_0.96.0_all.deb autokey-gtk_0.96.0_all.deb
### sudo apt --fix-broken install -y
### sudo dpkg -i autokey-common_0.96.0_all.deb autokey-gtk_0.96.0_all.deb

# Some Other Settings for Gnome DE distros
## Permanently enable Do Not Disturb (No Notifications)
### gsettings set org.gnome.desktop.notifications show-banners false
## Permanently disable Bluetooth
### sudo systemctl disable bluetooth.service
## Enable Hidden Startup Programs
### sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop
## Disable UTC and use Local Time in your Linux distro if necessary
### timedatectl set-local-rtc 1 --adjust-system-clock

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