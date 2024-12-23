#!/bin/bash
sudo apt update && sudo apt upgrade -y

mkdir -p ~/github

## System Packages / Dependencies
sudo apt install policykit-1-gnome network-manager-gnome network-manager libgtk-layer-shell-dev libnotify-bin libnotify-dev -y
sudo apt install git build-essential -y

clear

## Window Manager
sudo apt install sway sway-notification-center wayland-protocols wayland-utils wl-clipboard xdg-desktop-portal-wlr libwlroots-dev xwayland qtwayland5 -y 
sudo apt install pamixer pavucontrol pulsemixer xdotool -y

clear
## User Packages
sudo apt install waybar wofi grim slurp udiskie feh firefox-esr curl unzip qimgv -y
## Fonts
sudo apt install fonts-font-awesome fonts-recommended fonts-terminus

clear

cd --

xdg-user-dirs-update
echo "DONE!!"
