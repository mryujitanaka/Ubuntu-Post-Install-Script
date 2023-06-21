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
sudo apt install -y autokey-gtk
sudo apt install -y virtualbox
sudo apt install -y neofetch
sudo apt install -y htop
sudo apt install -y net-tools
sudo apt install -y ffmpeg
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y flameshot
sudo apt install -y adb
sudo apt install -y grub-customizer
sudo apt install -y scrcpy
sudo apt install -y vlc
sudo apt install -y numlockx
sudo apt install -y inetutils-traceroute
sudo apt install -y imwheel
sudo apt install -y tldr
## For Laptops only:
### sudo apt install -y tlp
## If you are going to install Cryptomator, you might need to install this package:
sudo apt install -y fuse3
## If your DE is not GNOME, download the package below. Otherwise, use the KDE-Connect browser extension.
sudo apt install -y kdeconnect
## If you install OBS Studio, download the package below.
sudo apt install -y v4l2loopback-dkms
## To change XFCE Lock Screen Wallpaper:
sudo apt install -y lightdm-gtk-greeter-settings
## To use LibreOffice, extensions like LanguageTool and/or any other Java based application:
sudo apt install -y java-common
sudo apt install -y default-jre
## Testing:
### sudo apt install -y openjdk-17-jre
### sudo apt install -y openjdk-17-jre-headless
## If your DE is GNOME, then download the packages below (if you want to).
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

### System Update
sudo apt update -qq
#### Installing the Programs
sudo apt install -y papirus-icon-theme
sudo apt install -y qbittorrent
sudo apt install -y git
sudo apt install -y cryptomator
sudo apt install -y keepassxc
sudo apt install -y obs-studio
##### sudo apt install -y apache2
##### sudo apt install -y php8.1

# PPA's Apps from Other Sources
## Amazon Corretto 11
### wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add -
### sudo add-apt-repository 'deb https://apt.corretto.aws stable main'
## Node.js LTS (v18.x)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
## yarn
### curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
### echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
## Brave Browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
### System Update
sudo apt update -qq
### PPA's Apps from Other Sources installation
#### sudo apt install -y java-11-amazon-corretto-jdk
sudo apt install -y nodejs
#### sudo apt install -y yarn
sudo apt install -y brave-browser

### If Node.js was installed, probably npm was installed along with it. So, consider updating npm to the latest version:
sudo npm config set fund false --location=global
sudo npm install -g npm@latest

# Flatpak Update
flatpak update -y

# Flatpak Apps
## AnyDesk
flatpak install flathub com.anydesk.Anydesk -y
## Tor Browser
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
## GIMP
flatpak install flathub org.gimp.GIMP -y
## Meld
flatpak install flathub org.gnome.meld -y
## Audacity
flatpak install flathub org.audacityteam.Audacity -y
## FileZilla
flatpak install flathub org.filezillaproject.Filezilla -y
## Discord
### flatpak install flathub com.discordapp.Discord -y
## Zoom
### flatpak install flathub us.zoom.Zoom -y
## Microsoft Skype
### flatpak install flathub com.skype.Client -y
## Microsoft Teams
### flatpak install flathub com.microsoft.Teams -y
## Todoist
### flatpak install flathub com.todoist.Todoist -y
## Slack
### flatpak install flathub com.slack.Slack -y
## Chromium
### flatpak install flathub org.chromium.Chromium -y
## TLPUI (if the package "tlp" was installed)
### flatpak install flathub com.github.d4nj1.tlpui -y

# Flatpak Clean Up
flatpak uninstall --delete-data -y
flatpak uninstall --unused -y

# wget Apps
## BleachBit
wget -c "https://download.bleachbit.org/bleachbit_4.4.2-0_all_ubuntu2004.deb"
## bottom
wget -c "https://github.com/ClementTsang/bottom/releases/download/0.9.0/bottom_0.9.0_amd64.deb"
## GitHubDesktop
wget -c "https://github.com/shiftkey/desktop/releases/download/release-3.2.1-linux1/GitHubDesktop-linux-3.2.1-linux1.deb"
## GitKraken
### wget -c "https://release.axocdn.com/linux/gitkraken-amd64.deb"
## GoogleChrome
wget -c "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
## LibreOffice
wget -c "https://mirror.turbozoneinternet.net.br/tdf/libreoffice/stable/7.5.3/deb/x86_64/LibreOffice_7.5.3_Linux_x86-64_deb.tar.gz"
## LibreOffice LangPack
wget -c "https://tdf.ufms.br/tdf/libreoffice/stable/7.5.3/deb/x86_64/LibreOffice_7.5.3_Linux_x86-64_deb_langpack_pt-BR.tar.gz"
## VSCode
wget -c "https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb"
## WordPress
### wget -c "https://wordpress.org/latest.zip"
## Angry IP Scanner
wget -c "https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan_3.9.1_amd64.deb"

### Installing the wget Programs
sudo dpkg -i bleachbit_4.4.2-0_all_ubuntu2004.deb bottom_0.9.0_amd64.deb GitHubDesktop-linux-3.2.1-linux1.deb google-chrome-stable_current_amd64.deb code_1.78.2-1683731010_amd64.deb
#### gitkraken-amd64.deb

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
echo "Please, restart the computer, clean up your system using BleachBit (if you want to) and then restart the computer again."