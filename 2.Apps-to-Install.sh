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
## sudo apt install -y virtualbox
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
### sudo apt install -y virtualbox-guest-x11 virtualbox-guest-utils virtualbox-guest-dkms
sudo apt install -y libqt5help5 libqt5opengl5

## If your DE (Desktop Environment) is not GNOME, download the package below. Otherwise, use the KDE-Connect browser extension.
sudo apt install -y kdeconnect
## If you are going to install OBS Studio, download the packages below.
sudo apt install -y v4l2loopback-dkms
sudo apt install -y ffmpeg
## If you want to change the XFCE Lock Screen Wallpaper, install this package:
sudo apt install -y lightdm-gtk-greeter-settings
## To use Java based applications like LibreOffice extensions and/or develop java apps, install the JRE or JDK packages below.
## JRE/JDK 17 from OpenJDK
sudo apt install -y openjdk-17-jdk
sudo apt install -y openjdk-17-jdk-headless
sudo apt install -y openjdk-17-jre
sudo apt install -y openjdk-17-jre-headless
sudo apt install -y openjdk-17-jre-zero
## JRE/JDK 21 from OpenJDK
### sudo apt install -y openjdk-21-jdk
### sudo apt install -y openjdk-21-jdk-headless
### sudo apt install -y openjdk-21-jre
### sudo apt install -y openjdk-21-jre-headless
### sudo apt install -y openjdk-21-jre-zero
## JRE/JDK 21 from AdoptOpenJDK Eclipse Temurin
### sudo apt install -y wget apt-transport-https gpg
### wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/adoptium.gpg > /dev/null
### echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/adoptium.list
### sudo apt update
### sudo apt install -y temurin-21-jdk
## OpenJ9 JVM

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
## Amazon Corretto 11
### wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add -
### sudo add-apt-repository 'deb https://apt.corretto.aws stable main'
## Node.js LTS (v20.10.x) - https://github.com/nodesource/distributions#using-ubuntu-1
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
## yarn
### curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
### echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
## Brave Browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
## AnyDesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
### System Update
sudo apt update -qq
### PPA's Apps from Other Sources installation
sudo apt install -y nodejs
sudo apt install -y brave-browser
sudo apt install -y anydesk
#### sudo apt install -y java-11-amazon-corretto-jdk
#### sudo apt install -y yarn

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
flatpak install flathub org.audacityteam.Audacity -y
## FileZilla
flatpak install flathub org.filezillaproject.Filezilla -y
## Okular
flatpak install flathub org.kde.okular -y
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

# wget Apps
## BleachBit
wget -c "https://download.bleachbit.org/bleachbit_4.6.0-0_all_ubuntu2204.deb"
## bottom
wget -c "https://github.com/ClementTsang/bottom/releases/download/0.10.2/bottom_0.10.2-1_amd64.deb"
## GitHubDesktop
wget -c "https://github.com/shiftkey/desktop/releases/download/release-3.4.3-linux1/GitHubDesktop-linux-amd64-3.4.3-linux1.deb"
## GoogleChrome
wget -c "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
## LibreOffice
wget -c "https://mirror.uepg.br/tdf/libreoffice/stable/24.8.0/deb/x86_64/LibreOffice_24.8.0_Linux_x86-64_deb.tar.gz"
## LibreOffice LangPack for pt-BR
wget -c "https://mirror.uepg.br/tdf/libreoffice/stable/24.8.0/deb/x86_64/LibreOffice_24.8.0_Linux_x86-64_deb_helppack_pt-BR.tar.gz"
## VSCode
wget -c "https://vscode.download.prss.microsoft.com/dbazure/download/stable/fee1edb8d6d72a0ddff41e5f71a671c23ed924b9/code_1.92.2-1723660989_amd64.deb"
## VirtualBox & VirtualBox Extension Pack
wget -c "https://download.virtualbox.org/virtualbox/7.0.20/virtualbox-7.0_7.0.20-163906~Ubuntu~jammy_amd64.deb"
wget -c "https://download.virtualbox.org/virtualbox/7.0.20/Oracle_VM_VirtualBox_Extension_Pack-7.0.20.vbox-extpack"
## GitKraken
### wget -c "https://release.gitkraken.com/linux/gitkraken-amd64.deb"
## WordPress
### wget -c "https://wordpress.org/latest.zip"
## Local by Flywheel (WordPress Local Server)
### wget -c "https://cdn.localwp.com/stable/latest/deb"
## Angry IP Scanner
### wget -c "https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan_3.9.1_amd64.deb"

### Installing the wget Programs
sudo dpkg -i bleachbit_4.6.0-0_all_ubuntu2204.deb bottom_0.10.2-1_amd64.deb GitHubDesktop-linux-amd64-3.4.3-linux1.deb google-chrome-stable_current_amd64.deb code_1.92.2-1723660989_amd64.deb virtualbox-7.0_7.0.20-163906~Ubuntu~jammy_amd64.deb
#### gitkraken-amd64.deb local-8.0.0-linux.deb ipscan_3.9.1_amd64.deb

## AutoKey Installation
wget -c "https://github.com/autokey/autokey/releases/download/v0.96.0/autokey-common_0.96.0_all.deb"
wget -c "https://github.com/autokey/autokey/releases/download/v0.96.0/autokey-gtk_0.96.0_all.deb"
sudo dpkg -i autokey-common_0.96.0_all.deb autokey-gtk_0.96.0_all.deb
sudo apt --fix-broken install -y
sudo dpkg -i autokey-common_0.96.0_all.deb autokey-gtk_0.96.0_all.deb

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