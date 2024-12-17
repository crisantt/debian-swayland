#!/bin/bash
sudo apt update && sudo apt upgrade -y

mkdir -p ~/github

## System Packages / Dependencies
sudo apt install policykit-1-gnome network-manager-gnome network-manager libgtk-layer-shell-dev libnotify-bin libnotify-dev -y
sudo apt install git build-essential -y

clear

## Window Manager
sudo apt install sway wayland-protocols wayland-utils wl-clipboard xdg-desktop-portal-wlr libwlroots-dev xwayland qtwayland5 pamixer pavucontrol pulsemixer xdotool -y

clear
## User Packages
sudo apt install waybar wofi mako-notifier grim slurp udiskie feh firefox-esr curl unzip -y
## Fonts
sudo apt install fonts-font-awesome fonts-recommended fonts-terminus

clear

## ly (Log in Manager?? Dunno what to call it)
sudo apt install libpam0g-dev libxcb-xkb-dev
cd ~/github
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
sudo systemctl enable ly

clear

cd --

xdg-user-dirs-update
echo "DONE!!"
