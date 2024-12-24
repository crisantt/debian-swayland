#!/bin/bash

# For Sway
sudo apt install sway \
build-essential \
waybar \ 
sway-notification-center \
libnotify-bin \
libnotify-dev \
policykit-1-gnome \
network-manager-gnome \
network-manager \
libgtk-layer-shell-dev -y

# Wayland Packages
sudo apt install wayland-protocols \
wayland-utils \
wl-clipboard \
xdg-desktop-portal-wlr \
libwlroots-dev \
xwayland \
qtwayland5 -y

# Packages That I Use
sudo apt install firefox-esr \ 
qimgv \
grim \
slurp \
udiskie \
mtools \
unzip -y

# Audio Packages
sudo apt install pavucontrol \
pamixer \
pulsemixer -y

xdg-user-dirs-update
